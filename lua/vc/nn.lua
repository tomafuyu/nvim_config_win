return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = true
    vim.keymap.set("n", lhs, rhs, opts)
end

