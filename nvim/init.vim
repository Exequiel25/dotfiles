" Init file for Neovim

if exists('g:vscode')
    " VS Code extension
    " source ~/.config/nvim/vscode/settings.vim " When using linux
    source C:\Users\Exequiel\Documents\dotfiles\nvim\vscode\settings.vim " When using Windows
else
    " Neovim settings
    set number
    " set relativenumber
endif
