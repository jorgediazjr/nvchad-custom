local M = {}

M.general = {
  n = {
    ["e<space>"] = { ":tabedit ", "write :tabe command", opts = { nowait = true } },
    [";"] = { ":", "enter cmdline", opts = { nowait = true } },
    ["<C-J>"] = { "<C-W><C-J>", "move up in window", opts = { nowait = true } },
    ["<C-K>"] = { "<C-W><C-K>", "move down in window", opts = { nowait = true } },
    ["<C-L>"] = { "<C-W><C-L>", "move right in window", opts = { nowait = true } },
    ["<C-H>"] = { "<C-W><C-H>", "move left in window", opts = { nowait = true } },
    ["mm"] = { "M", "go to middle of screen", opts = { nowait = true } },
    ["<Left><Left>"] = { "0", "go to beginning of line", opts = { nowait = true } },
    ["<Right><Right>"] = { "$", "go to end of line", opts = { nowait = true } },
    ["<M-Left>"] = { "0", "go to beginning of line", opts = { nowait = true } },
    ["<M-Right>"] = { "$", "go to end of line", opts = { nowait = true } },
    [""] = { "<ESC>:w<CR>", "save file", opts = { nowait = true } },
    ["˙"] = { "0", "go to beginning of line", opts = { nowait = true } },
    ["¬"] = { "$", "go to end of line", opts = { nowait = true } },
    ["no"] = { ":noh<return><esc>", "remove highlighted words from search results", opts = { nowait = true } },
    ["-"] = { "dd", "remove line under cursor", opts = { nowait = true } },
    ["<leader>b"] = { "<ESC>:vsp blank<CR>", "vertically split open a blank window", opts = { nowait = true } },
    ["<Left><tab>"] = { ":tabprevious<CR>", "go to previous tab", opts = { nowait = true } },
    ["<tab>"] = { ":tabnext<CR>", "go to next tab", opts = { nowait = true } },
    ["<leader><TAB>"] = { ":tabnext<CR>", "go to next tab", opts = { nowait = true } },
    ["<leader><Left><TAB>"] = { ":tabprevious<CR>", "go to previous tab", opts = { nowait = true } },
  },
  i = {
    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
    ["JK"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
    ["ds"] = { "$", "write $ char" , opts = { nowait = true }},
    [""] = { "<ESC>:w<CR>", "save file", opts = { nowait = true } },
    ["Ω"] = { "<ESC>0i", "go to beginning of line", opts = { nowait = true } },
    ["≈"] = { "<ESC>$a", "go to end of line", opts = { nowait = true } },
    ["<C-n>"] = { "<C-x><C-o>", "not sure", opts = { nowait = true } },
  },
}

return M
