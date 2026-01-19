return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = true
    vim.keymap.set("i", lhs, rhs, opts)
end

