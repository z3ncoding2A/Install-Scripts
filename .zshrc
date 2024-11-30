# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Misc 
#PATH="$HOME/.go/bin:$PATH"

#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off


# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not already there yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions 
zinit light Aloxaf/fzf-tab
zinit light zdharma-continuum/fast-syntax-highlighting
#zinit ice atinit"zicompinit; zicdreplay"

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo 
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found
zinit snippet OMZP::colored-man-pages

# Load completions 
autoload -U compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase 
setopt appendhistory 
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa --long --group-directories-first --header --icons=always --no-time --no-permissions $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'exa --long --group-directories-first --header --icons=always --no-time --no-permissions $realpath'

# Aliases
alias syncgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ls='exa --long --group-directories-first --header --total-size --icons=always'
alias lsa='exa -a --long -g --no-time --header --width 10 --total-size --group-directories-first --icons=always'
alias lsd='exa --long -T --no-permissions --group-directories-first --total-size --hyperlink --icons=always'
alias c='clear'
alias clean='
    bleachbit; 
    sudo bleachbit;
    yay -Sc --noconfirm
'
alias df='df -h'
alias disks='gnome-disks'
alias update='
    yay -Syyu;
    yay -Syy;
    yay -Su --noconfirm
'
alias fullupdate='	
    sudo pacman-key --refresh-keys;
    sudo pacman-key --init;
    sudo pacman-key --populate archlinux;
    sudo pacman -Syy;
    yay -Syyu --noconfirm;
    sudo updatedb;
    sudo update-ca-trust;
    sudo update-desktop-database;
    sudo update-pciids;
    sudo airodump-ng-oui-update;
    sudo update-smart-drivedb
'
alias yay="paru --color always"


# Shell intergrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"


# System Configuration
fastfetch --bright-color true  --color-output yellow --colors-symbol block --color-keys red --config examples/2.jsonc


eval "$(direnv hook zsh)"
