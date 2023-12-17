# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
	zsh-autosuggestions
	sudo
)

source $ZSH/oh-my-zsh.sh


alias dk="docker"
alias e="ranger"
alias fp="ps -ea | fzf"
alias cr="~/configs/scripts/helper.sh connect_remote"

# general use
alias ls='exa'                                                         # ls
alias l='exa -lbF'                                               # list, size, type, git
alias ll='exa -lbGF'                                             # long list
alias llm='exa -lbGF --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --color-scale' # all + extended list
alias lS='exa -1'                                                      # one column, just names
alias lt='exa --tree --level=2'                                        # tree

# some git alias
alias gsb='~/configs/scripts/helper.sh checkout_branch'
alias gst='git status'
alias gl='git log'
alias gf='git fetch --prune'
alias gp='git pull'
alias gd='git diff'
alias ga='git add'

export PATH="$HOME/.local/bin:$PATH"
export TERM=xterm-256color
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
fpath+=${ZDOTDIR:-~}/.zsh_functions
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
