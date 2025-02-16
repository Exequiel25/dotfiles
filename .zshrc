# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Theme
source ~/.zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Plugins
source ~/.zsh/plugins/zkbd-keybindings/keybindings.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/sudo-plugin/sudo.plugin.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/copydir/copydir.plugin.zsh
source ~/.zsh/plugins/dirhistory/dirhistory.plugin.zsh
# My Plugins
# RGB Keyboard
# source ~/.zsh/plugins/rgb-keyboard/rgb-keyboardctl.plugin.zsh

# Alias
alias ls='eza --icons --colour=always --color-scale-mode=gradient --group-directories-first'
# alias matlab='/usr/local/MATLAB/R2023b/bin/matlab'
 alias conda-init='source ~/.zsh/conda/conda-init.sh'

#export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0 export LIBGL_ALWAYS_INDIRECT=1
source /opt/ros/jazzy/setup.zsh
