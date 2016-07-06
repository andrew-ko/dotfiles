# Tmux
alias tmux="env TERM=screen-256color tmux"
# alias tmux="tmux -2"
alias ks-tmux="tmux kill-session"

# Vim
alias v="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias n="A_BG=1 NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias nvim-config="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim ~/.config/nvim/init.vim"

# Git
alias gil="git log --oneline --graph --decorate --all"
alias gis="git status"
alias gia="git add -A"
alias gic="git commit"
alias gicm="git checkout master"

# Npm
alias nid="npm install --save-dev"
alias nis="npm install --save"

# Docker
alias dps="docker ps"
alias dpa="docker ps -a"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -alh"
alias tl="tree -L 1"
alias d="cd ~"
alias c="clear"
alias cd-php="cd ~/code/PHP"
alias cd-js="cd ~/code/JS"
alias cd-ruby="cd ~/code/Ruby"
alias cd-rails="cd ~/code/rails"
alias cd-ba="cd ~/code/battle_asserts"
alias cd-kps="cd ~/localhost/kidspartyset"

# Color-schemes
alias eighties-theme="~/.config/base16-shell/scripts/base16-eighties.sh"
alias plateau-theme="~/.config/base16-shell/scripts/base16-atelier-plateau.sh"
alias lakeside-theme="~/.config/base16-shell/scripts/base16-atelier-lakeside.sh"
alias savanna-theme="~/.config/base16-shell/scripts/base16-atelier-savanna.sh"
