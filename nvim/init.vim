" Init file for Neovim

if exists('g:vscode')
    " VS Code extension
    " Windows
    source C:\Users\exequ\Documents\dotfiles\nvim\vscode\settings.vim
    " Linux
    " source ~/dotfiles/nvim/vscode/settings.vim
else
    " Neovim settings
    set number
    " set relativenumber
endif
