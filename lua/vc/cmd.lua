return function(n, c, o)
    o = o or {}
    vim.api.nvim_create_user_command(n, c, o)
end

