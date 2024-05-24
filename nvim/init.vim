" Init file for Neovim

if exists('g:vscode')
    " VS Code extension
    source ~\Documents\dotfiles\nvim\vscode\settings.vim " When using Windows
else
    " Neovim settings
    set number
    " set relativenumber
endif
