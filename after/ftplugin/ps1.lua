vim.g.matchup_motion_enabled = 0

vim.lsp.config("powershell_es", {
    bundle_path = vim.fn.expand("$HOME/Documents/PowerShell/PowerShellEditorServices"),
    shell =  "pwsh.exe",
})

vim.lsp.enable("powershell_es")

