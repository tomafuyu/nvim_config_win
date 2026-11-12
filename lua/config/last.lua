local state_dir = vim.fn.stdpath("state") .. "/last-files"
vim.fn.mkdir(state_dir, "p")

local arg = vim.fn.argv(0)
local is_dir = vim.fn.argc() == 1 and vim.fn.isdirectory(arg) == 1
local root = vim.fs.normalize(
	is_dir and vim.fn.fnamemodify(arg, ":p") or vim.fn.getcwd()
)

if root ~= "/" and not root:match("^%a:/$") then
	root = root:gsub("/+$", "")
end

local function path_key(path)
	if vim.fn.has("win32") == 1 then
		return path:lower()
	end
	return path
end

local state_path = state_dir .. "/" .. vim.fn.sha256(path_key(root))
local last_file = nil

local function is_in_root(path)
	local base = path_key(root)
	local target = path_key(path)

	local prefix = base:sub(-1) == "/" and base or base .. "/"
	return target:sub(1, #prefix) == prefix
end

local function track(buf)
	if not vim.api.nvim_buf_is_valid(buf) then
		return
	end

	if vim.bo[buf].buftype ~= "" then
		return
	end

	local path = vim.api.nvim_buf_get_name(buf)
	if path == "" or vim.fn.filereadable(path) ~= 1 then
		return
	end

	path = vim.fs.normalize(path)

	if is_in_root(path) then
		last_file = path
	end
end

vim.api.nvim_create_autocmd(
	{ "BufEnter", "WinEnter", "BufWritePost" },
	{
		callback = function()
			track(vim.api.nvim_get_current_buf())
		end
	}
)

vim.api.nvim_create_autocmd("VimLeavePre", {
	callback = function()
		if last_file then
			vim.fn.writefile({ last_file }, state_path)
		end
	end,
})

if is_dir then
	vim.api.nvim_create_autocmd("VimEnter", {
		once = true,
		callback = function()
			vim.schedule(function()
				vim.api.nvim_set_current_dir(root)
				if vim.fn.filereadable(state_path) == 1 then
					local path = vim.fn.readfile(state_path)[1]

					if path and vim.fn.filereadable(path) == 1 and is_in_root(vim.fs.normalize(path)) then
						vim.cmd.edit(vim.fn.fnameescape(path))
						return
					end
				end
				require("telescope.builtin").find_files({ cwd = root })
			end)
		end
	})
end
