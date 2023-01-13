# NvChad-Custom

Things you will need
  1. Any nerd-font installed, to render certain symbols
  2. Obviously, you will need to install neovim, and then clone the nvchad files as explained on NvChads site
  3. Install NPM via `nvm`, the "node-version-manager", in order to install some lang servers
  4. Install `gcc` and `libstdc++` (for treesitter), the package names might vary depending on distro
  5. (If you're on a centos-based distro, make sure your clojure-lsp works properly, you may need to grab an alternate binary)
  6. Install `python3-venv` (for the dockerfile language server)
  7. Install `go` (for the sql-language server)
  8. Install `composer` to make use out of the PHP ls
  9. Install clojure and babashka to make use out of the clojure-tooling, additionally, add an nrepl alias to your users deps.edn
  10. Install ripgrep, to use with telescope
  11. Symlink this repo to `<configs>/nvim/lua/custom`
  12. Enter Neovim, run `:PackerSync`, quit out and reenter Neovim, and then run `:MasonInstallAll`

