local M = {}

local buf, win

local default = {
    key = "<C-t>",
    width = .8,
    height = .8,
    border = "double",
}

local winOpts = { relative = "editor" }

local function isValidPercentage(s)
    return 0 < s or s <= 1
end

function M.toggle()
    if buf == vim.api.nvim_get_current_buf() then
        vim.api.nvim_win_close(win, false)
    elseif buf ~= nil then
        win = vim.api.nvim_open_win(buf, true, winOpts)
    else
        buf = vim.api.nvim_create_buf(true, false)
        win = vim.api.nvim_open_win(buf, true, winOpts)
        vim.cmd[[terminal]]
    end
end

function M.setup(opts)
    opts = opts or {}
    setmetatable(opts, { __index = default })

    if isValidPercentage(opts.height) then
        winOpts.height = math.floor(vim.o.lines * opts.height)
    elseif opts.height > 1 then
        winOpts.height = opts.height
    else
        winOpts.height = math.floor(vim.o.lines * default.height)
    end

    if isValidPercentage(opts.width) then
        winOpts.width = math.floor(vim.o.columns * opts.width)
    elseif opts.width > 1 then
        winOpts.width = opts.width
    else
        winOpts.width = math.floor(vim.o.columns * default.width)
    end

    winOpts.row = math.floor((vim.o.lines - winOpts.height) / 2)
    winOpts.col = math.floor((vim.o.columns - winOpts.width) / 2)
    winOpts.border = opts.border

    vim.keymap.set("n", opts.key, M.toggle)

    local group = vim.api.nvim_create_augroup("fTermEvents", { clear = true })
    vim.api.nvim_create_autocmd("TermClose", {
        group = group,
        callback = function(args)
            if buf == args.buf then buf = nil end
        end
    })
end

return M

