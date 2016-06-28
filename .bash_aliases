# alias tmux="tmux -2"
alias tmux="env TERM=screen-256color tmux"
alias ks-tmux="tmux kill-session"
alias eighties-theme="~/.config/base16-shell/base16-eighties.dark.sh"
alias railscasts-theme="~/.config/base16-shell/base16-railscasts.dark.sh"

alias cd-kps="cd ~/localhost/kidspartyset"
alias cd-php="cd ~/code/PHP"
alias cd-js="cd ~/code/JS"
alias cd-ruby="cd ~/code/Ruby"
alias cd-rails="cd ~/code/rails"
alias cd-dotfiles="cd ~/inventory/dotfiles"
alias cd-ba="cd ~/code/battle_asserts"

alias v="vim ."
alias vv="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias nn="A_BG=1 NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias vim="A_BG=1 NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"

# Git
alias gil="git log --oneline --graph --decorate --all"
alias gis="git status"
alias gia="git add -A"
alias gic="git commit"
alias gicm="git checkout master"

# Docker
alias dps="docker ps"
alias dpa="docker ps -a"

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -alh"
alias tl="tree -L 1"
alias h="cd ~"
alias d="cd ~"
alias c="clear"

# keymaps
# bind -x '"\C-n": clear'
alias nvim-config="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim ~/.config/nvim/init.vim"
