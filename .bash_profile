[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

set -o vi

path()
{
  old=$IFS
  IFS=:
  printf "%s\n" $PATH
  ISF=$old
}

PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:$HOME/.composer/vendor/bin" # Add composer bin to PATH

source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"

# base16 shell
# export THEME="base16-atelierlakeside"
# export THEME="base16-eighties"
# export THEME="base16-tomorrow"
# export THEME="base16-default"
# export BACKGROUND="dark"

# BASE16_SHELL="$HOME/.config/base16-shell/scripts/$THEME.$BACKGROUND.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
