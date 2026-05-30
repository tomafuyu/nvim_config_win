local set = vim.opt
local os = vim.loop.os_uname().sysname

if os == "Windows_NT" then
	set.undodir = vim.fn.expand("$HOME/AppData/Local/nvim-data/undo")

	set.shell = "pwsh.exe"
	set.shellcmdflag = "-c"
	set.shellquote = ""
	set.shellxquote = ""
	-- set.shellpipe = ">%s\\ 2>&1"
	-- set.shellredir =  ">%s\\ 2>&1"
elseif os == "Linux" then
	set.undodir = vim.fn.expand("~/.local/share/nvim/undo")
end

