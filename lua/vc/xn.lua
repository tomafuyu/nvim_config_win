return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = true
    vim.keymap.set("x", lhs, rhs, opts)
end

