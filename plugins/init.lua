local lisp_file_types = {
  "clojure",
  "clojurescript",
  "edn",
  "fennel",
  "janet",
  "lisp",
  "hy",
}

return {

  -- Install plugin
  ["Pocco81/TrueZen.nvim"] = {},

  ["bakpakin/janet.vim"] = {},

  -- Override plugin definition options
  ["goolord/alpha-nvim"] = {
    disable = false,
  },


  -- LSP stuff
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
  },

  -- TS needs certain c++ libraries present
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "lua",
        "clojure",
        "php",
        "dockerfile",
        "yaml",
        "bash",
        "typescript",
        "javascript",
        "html",
        "css",
        "python",
      },
    },
  },

  -- These will require npm, and go
  ["williamboman/mason.nvim"] = {
     override_options = {
        ensure_installed = {
          -- lua stuff
          "lua-language-server",
          "stylua",

          -- web dev
          "css-lsp",
          "html-lsp",
          "typescript-language-server",
          "deno",
          "emmet-ls",
          "json-lsp",
          "yaml-language-server",
          "intelephense",
          "nginx-language-server",
          "sqls",
          "sql-formatter",
          "dockerfile-language-server",
          "eslint_d",
          "prettierd",

          -- shell
          "shfmt",
          "shellcheck",

          --lisps
          "clojure-lsp",
        },
      },
    },


  ["lewis6991/gitsigns.nvim"] = {
    override_options = {
      current_line_blame = true,
    },
  },

  -- Lisp stuff
  ["Olical/conjure"] = {
    ft = lisp_file_types,
  },

  ["gpanders/nvim-parinfer"] = {
    ft = lisp_file_types,
  },

  ["clojure-vim/vim-jack-in"] = {
    ft = {"clojure"},
---    requires = {"radenling/vim-dispatch-neovim"},
  },
  ["radenling/vim-dispatch-neovim"] = {},
  ["tpope/vim-dispatch"] = {},


  -- Motion plugins
  ["ggandor/leap.nvim"] = {
    config = function()
      require('leap').add_default_mappings()
    end,
  },

  ["tpope/vim-repeat"] = {},

  ["hkupty/iron.nvim"] = {
        config = function()
            local view = require("iron.view")
            require("iron.core").setup(
                {
                    config = {
                        -- Whether a repl should be discarded or not
                        scratch_repl = true,
                        -- Your repl definitions come here
                        repl_definition = {
                          sh = {
                            -- Can be a table or a function that
                            -- returns a table (see below)
                            command = {"zsh"}
                          }
                        },
                        -- One can always use the default commands from vim directly
                        repl_open_cmd = view.split.vertical.botright(80)
                      },
                      -- Iron doesn't set keymaps by default anymore.
                      -- You can set them here or manually add keymaps to the functions in iron.core
                      keymaps = {
                        send_motion = "<space>sc",
                        visual_send = "<space>sc",
                        send_file = "<space>sf",
                        send_line = "<space>sl",
                        send_mark = "<space>sm",
                        mark_motion = "<space>mc",
                        mark_visual = "<space>mc",
                        remove_mark = "<space>md",
                        cr = "<space>s<cr>",
                        interrupt = "<space>s<space>",
                        exit = "<space>sq",
                        clear = "<space>cl",
                      },
                      -- If the highlight is on, you can change how it looks
                      -- For the available options, check nvim_set_hl
                      highlight = {
                        italic = true
                      },
                      ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
                }
            )
        end,
    },
}
