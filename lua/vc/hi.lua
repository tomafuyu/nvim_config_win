return function(name, val, ns)
    ns = ns or 0
    vim.api.nvim_set_hl(ns, name, val)
end

