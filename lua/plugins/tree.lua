vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local hi = require("vc.hi")
local p = require("color")
hi("NvimTreeOpenedHL", { fg = p.white })
hi("NvimTreeNormal", { fg = p.gray })
hi("NvimTreeBookmarkHL", { undercurl = true, sp = p.lime })

local function oa(bufnr)
    local api = require("nvim-tree.api")
    local nd = api.node
    local fs = api.fs
    local tr = api.tree
    local mk = api.marks

    local function n(lhs, rhs, desc)
        vim.keymap.set("n", lhs, rhs, {
            desc = "nvim-tree: " .. desc,
            buffer = bufnr,
            noremap = true,
            silent = true,
            nowait = true,
        })
    end

    n("o" , nd.open.edit, "Edit")
    n("v" , nd.open.vertical, "Vertical")
    n("s" , nd.open.horizontal, "Horizontal")
    n("t" , nd.open.tab, "Tab")
    n("i" , nd.show_info_popup, "Info")
    n("u" , nd.navigate.parent, "Parent")
    n("<" , nd.navigate.sibling.prev, "Prev sibling")
    n(">" , nd.navigate.sibling.next, "Next sibling")
    n("!" , nd.run.system, "Run system")

    n("a" , fs.create, "Create")
    n("x" , fs.cut, "Cut")
    n("p" , fs.paste, "Paste")
    n("d" , fs.trash, "Trash")
    n("D" , fs.remove, "Remove")
    n("y" , fs.copy.node, "Copy")
    n("ca", fs.copy.absolute_path, "Copy absolute path")
    n("cr", fs.copy.relative_path, "Copy relative path")
    n("cb", fs.copy.basename, "Copy basename")
    n("cc", fs.copy.filename, "Copy filename")
    n("rr", fs.rename, "Rename")
    n("rb", fs.rename_basename, "Rename base")
    n("rf", fs.rename_full, "Rename full")
    n("rs", fs.rename_sub, "Rename sub")

    n("R" , tr.reload, "Refresh")
    n("e" , tr.expand_all, "Expand all")
    n("E" , tr.collapse_all, "Collpase all")
    n("O" , tr.change_root_to_node, "cd")
    n("U" , tr.change_root_to_parent, "cd ..")
    n("q" , tr.close, "Close")
    n("." , tr.toggle_hidden_filter, "Toggle dotfiles")
    n("g.", tr.toggle_gitignore_filter, "Toggle gitignore")
    n("g?", tr.toggle_help, "Help")

    n("F" , api.live_filter.clear, "Filter clear")
    n("f" , api.live_filter.start, "Filter start")

    n("m", mk.toggle, "Toggle mark")
    n("M", mk.clear, "Clear marks")
    n("X", mk.bulk.move, "Move marks")
    n("T", function()
        local marks = mk.list()
        if #marks > 0 then
            for _, node in ipairs(marks) do
                vim.notify(node.absolute_path)
                vim.cmd("tabedit " .. vim.fn.fnameescape(node.absolute_path))
            end
            mk.clear()
        end
    end, "Tab (marks)")
end

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    lazy = false,
    priority = 100,
    keys = {
        { "<Leader>t", "<Cmd>NvimTreeToggle<CR>" },
    },
    opts = {
        actions = {
            expand_all = {
                exclude = { ".git" },
            },
            file_popup = {
                open_win_config = {
                    border = "rounded",
                },
            },
        },
        filters = {
            dotfiles = true,
            git_ignored = false,
        },
        renderer = {
            group_empty = true,
            highlight_opened_files = "name",
            highlight_bookmarks = "name",
            hidden_display = "all",
            indent_width = 4,
            icons = {
                git_placement = "signcolumn",
                show = {
                    bookmarks = false,
                }
            },
            indent_markers = {
                enable = true,
            },
        },
        tab = {
            sync = {
                open = true,
                close = true,
            },
        },
        view = {
            width = 32,
        },
        on_attach = oa,
    },
}

--[[
node.navigate.parent_close,     "Close Directory")
node.navigate.sibling.first,    "First Sibling")
node.navigate.sibling.last,     "Last Sibling")
node.open.no_window_picker,     "Open: No Window Picker")
node.open.replace_tree_buffer,  "Open: In Place")
node.open.toggle_group_empty,   "Toggle Group Empty")
tree.search_node,               "Search")
node.navigate.git.next,         "Next Git")
node.navigate.git.prev,         "Prev Git")
tree.toggle_git_clean_filter,   "Toggle Filter: Git Clean")
tree.toggle_gitignore_filter,   "Toggle Filter: Git Ignore")
node.run.cmd,                   "Run Command")

local function MyNvimTreeTrash()
    local node = api.tree.get_node_under_cursor()
    if node then
        vim.fn.jobstart("trash " .. node.absolute_path, {
            detach = true,
            on_exit = function(job_id, data, event)
                api.tree.reload()
            end,
        })
    else print("no file") end
end
--]]

