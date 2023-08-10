---@type MappingsTable
local M = {}

M.general = {
  n = {
    --[";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!
M.abc = {
  n = {
    ["<C-J>"] = { "<C-W><C-J>", "move down in pane", opts = { nowait = true }},
    ["<C-K>"] = { "<C-W><C-K>", "move up in pane", opts = { nowait = true }},
    ["<C-L>"] = { "<C-W><C-L>", "move right in pane", opts = { nowait = true }},
    ["<C-H>"] = { "<C-W><C-H>", "move left in pane", opts = { nowait = true }},
    ["mm"] = { "M", "move cursor to middle of screen", opts = { nowait = true }},
    ["<Left><Left>"] = { "0", "move cursor to start of line", opts = { nowait = true }},
    ["<Right><Right>"] = { "$", "move cursor to end of line", opts = { nowait = true }},
    ["<M-Left>"] = { "0", "move cursor to start of line", opts = { nowait = true }},
    ["<M-Right>"] = { "$", "move cursor to end of line", opts = { nowait = true }},
    [""] = { "<ESC>:w<CR>", "save file", opts = { nowait = true }},
    ["no"] = { ":noh<return><esc>", "remove highlighted words from search results", opts = { nowait = true }},
    ["-"] = { "dd", "delete line under cursor", opts = { nowait = true }},
    ["<leader>b"] = { "<ESC>:vsp blank<CR>", "vertical split a blank window pane", opts = { nowait = true }},
    ["<Left><tab>"] = { ":tabprevious<CR>", "go to previous tab", opts = { nowait = true }},
    ["<tab>"] = { ":tabnext<CR>", "go to next tab", opts = { nowait = true }},
    ["<expr> e"] = { "((getcmdtype() is# ':' && getcmdline() is# 'e')?('tabe'):('e'))", "expand command for tabe", opts = { nowait = true }},
  },
  i = {
    ["jk"] = { "<ESC>", "enter normal mode", opts = { nowait = true }},
    ["JK"] = { "<ESC>", "enter normal mode", opts = { nowait = true }},
    [""] = { "<ESC>:w<CR>", "exit insert mode and save", opts = { nowait = true }},
    ["Ω"] = { "<ESC>0i", "exit insert mode, go to start of line, enter insert mode", opts = { nowait = true }},
    ["≈"] = { "<ESC>$a", "exit insert mode, go to end of line, enter insert mode", opts = { nowait = true }},
  }
}

return M
