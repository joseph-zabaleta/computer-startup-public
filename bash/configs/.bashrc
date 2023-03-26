# importing constants
if [ -f $repoDirectory/bash/configs/constants.sh ]; then
  . $repoDirectory/bash/configs/constants.sh
fi

# Enable ls colors refer to dircolors --help (must load before color constants)
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# importing color constants
if [ -f $repoDirectory/bash/configs/colors.sh ]; then
  . $repoDirectory/bash/configs/colors.sh
fi

# importing aliases
if [ -f $repoDirectory/bash/configs/.bash_aliases ]; then
    . $repoDirectory/bash/configs/.bash_aliases
fi

# Loads node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# This function is used in the PS1 export below prints current directory and up one level
function PWD {
  pwd | awk -F\/ '{print $(NF-1)"\057"$(NF)}'
}

# PS1 Prompt Output : '01:50:51 devz/computer-startup (main) $ '
PS1=$IYellow$Time12h' ''$(PWD)'$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$IGreen'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " (%s)"); \
  fi)"; \
fi) '$Color_Off'\$ '