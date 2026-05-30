-- vim commands

local M = {}

function M.no(lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = true
	vim.keymap.set("", lhs, rhs, opts)
end

function M.nn(lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = true
	vim.keymap.set("n", lhs, rhs, opts)
end

function M.xn(lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = true
	vim.keymap.set("x", lhs, rhs, opts)
end

function M.ino(lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = true
	vim.keymap.set("i", lhs, rhs, opts)
end

function M.cmd(n, c, o)
	o = o or {}
	vim.api.nvim_create_user_command(n, c, o)
end

function M.hi(name, val, ns)
	ns = ns or 0
	vim.api.nvim_set_hl(ns, name, val)
end

return M

