-- from chatgpt

local fixedline = {}
local fixed_win = nil
local fixed_buf = nil
local fixed_range = nil
local scroll_autocmd_id = nil
local update_scheduled = false

local function update_fixed_buffer()
	if not fixed_buf or not fixed_range or not vim.api.nvim_buf_is_valid(0) or not vim.api.nvim_buf_is_valid(fixed_buf) then
		return
	end
	local lines = vim.api.nvim_buf_get_lines(0, fixed_range[1] - 1, fixed_range[2], false)
	vim.api.nvim_set_option_value("modifiable", true, { buf = fixed_buf })
	vim.api.nvim_buf_set_lines(fixed_buf, 0, -1, false, lines)
	vim.api.nvim_set_option_value("modifiable", false, { buf = fixed_buf })
	update_scheduled = false
end

local function on_win_scrolled()
	if update_scheduled then return end
	update_scheduled = true
	vim.schedule(update_fixed_buffer)
end

function fixedline.set_fixed_range(start_line, end_line)
	if start_line > end_line then
		start_line, end_line = end_line, start_line
	end
	fixed_range = { start_line, end_line }

	if not fixed_buf or not vim.api.nvim_buf_is_valid(fixed_buf) then
		fixed_buf = vim.api.nvim_create_buf(false, true)
		vim.api.nvim_set_option_value("modifiable", false, { buf = fixed_buf })
	end

	local ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
	vim.api.nvim_set_option_value("filetype", ft, { buf = fixed_buf })

	update_fixed_buffer()

	if fixed_win and vim.api.nvim_win_is_valid(fixed_win) then
		vim.api.nvim_win_close(fixed_win, true)
	end

	local win_width = vim.api.nvim_win_get_width(0)
	local win_height = end_line - start_line + 1
	local max_height = vim.api.nvim_win_get_height(0)
	if win_height > max_height then
		win_height = max_height
	end

	local w = math.floor(win_width / 2)
	fixed_win = vim.api.nvim_open_win(fixed_buf, false, {
		relative = "win",
		win = 0,
		width = w,
		height = win_height,
		row = 1,
		col = w,
		focusable = false,
		style = "minimal",
		border = nil,
		zindex = 10,
	})

	vim.api.nvim_set_option_value("winhl", "Normal:Normal,EndOfBuffer:EndOfBuffer", { win = fixed_win })

	if scroll_autocmd_id then
		vim.api.nvim_del_autocmd(scroll_autocmd_id)
	end
	scroll_autocmd_id = vim.api.nvim_create_autocmd("WinScrolled", {
		callback = on_win_scrolled,
	})
end

function fixedline.clear_fixed()
	if fixed_win and vim.api.nvim_win_is_valid(fixed_win) then
		vim.api.nvim_win_close(fixed_win, true)
	end
	fixed_win = nil
	fixed_range = nil
	if scroll_autocmd_id then
		vim.api.nvim_del_autocmd(scroll_autocmd_id)
		scroll_autocmd_id = nil
	end
	update_scheduled = false
end

function fixedline.set()
	local start_line = vim.fn.line("v")
	local end_line = vim.fn.line(".")
	fixedline.set_fixed_range(start_line, end_line)
end

vim.keymap.set("v", "<leader>fl", fixedline.set, { desc = "Fix selected lines" })
vim.keymap.set("n", "<leader>fc", fixedline.clear_fixed, { desc = "Clear fixed lines" })

