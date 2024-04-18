" Init file for Neovim

if exists('g:vscode')
    " VS Code extension
    source ~/.config/nvim/vscode/settings.vim
else
    " Neovim settings
    set number
    " set relativenumber