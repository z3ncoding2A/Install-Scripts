# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off


## Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

## Download Zinit, if it's not already there yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


## Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

## Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

## Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions 
zinit light Aloxaf/fzf-tab
zinit light zdharma-continuum/fast-syntax-highlighting

## Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo 
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found
zinit snippet OMZP::colored-man-pages

## Load completions 
autoload -U compinit && compinit

zinit cdreplay -q

## Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

## History
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

## Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa --long --group-directories-first --header --icons=always --no-time --no-permissions $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'exa --long --group-directories-first --header --icons=always --no-time --no-permissions $realpath'


## Shell intergrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(direnv hook zsh)"

# System Configuration
fastfetch --bright-color true  --color-output yellow --colors-symbol block --color-keys red --config examples/2.jsonc	
#--config examples/2.jsonc
#fastfetch --config examples/2.jsonc

## Aliases
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
alias yay="paru --failfast --color always"
alias yayS="paru -S --failfast --color always"
alias ping="ping -c 4 google.com"
alias net="
	speedtest-cli --no-upload;
	speedtest-cli --no-upload;
	speedtest-cli --no-upload
"
alias cat="cat {pkg} -n"

#alias toron='
#	systemctl start iptables.service;  
#	systemctl start ip6tables.service; 
#	systemctl start tor.service
#'
#alias toroff='
#	systemctl stop iptables.service;  
#	systemctl stop ip6tables.service; 
#	systemctl stop tor.service
#'

#export GOPATH=/opt/go
#export GOROOT=/usr/lib/go
#export PATH=$PATH:/usr/lib/go/bin:/opt/go/bin
