# Constant Paths
# MARKED FOR REMOVAL =============
# bash_dir=$(realpath $0)
# =============================
alias aliases='cats $repoDirectory/bash/configs/.bash_aliases'

# Paths
bashScripts="$repoDirectory/bash/scripts"

# ls & dir
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# cd
alias cdd='cd ..'
alias cddc='cd .. && ls'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# git
alias gs='git status'
alias gc='git checkout'
alias ga='git add'
alias gm='git commit -m'
alias gp='git push origin'
alias gitlog="$bashScripts/gitlog.sh"
alias gslist='git stash list --format="%gd (%cr): %gs";'
alias gsapply="$bashScripts/gsapply.sh"
alias gss="$bashScripts/gssave.sh"
alias gspop="$bashScripts/gspop.sh"
alias gsdrop="$bashScripts/gsdrop.sh"
alias prune="git fetch origin --prune"
alias branches="git branch -a"

# scripts
alias pgup="$bashScripts/pgup.sh"
alias pgdown="$bashScripts/pgdown.sh"

# Path
alias path='echo -e ${PATH//:/\\n}'

# Python
alias python='winpty python.exe'
alias shell='source venv/Scripts/activate'
alias off='deactivate'

# Explorer / Browser / Terminal
alias new='start "" "C:\Program Files\Git\git-bash.exe"'
alias open='start .'
alias c='clear'
# alias vs='start "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"'
alias vs="$bashScripts/vs.sh"

# Misc
alias resource='source $repoDirectory/bash/configs/.bashrc'
alias npmg='npm list -g --depth=0'
alias bashrc="code $repoDirectory"
alias cats="cat -n"

# Helper functions
# Performs 'ls' after 'cd' if successful.
dc() {
  builtin cd "$*"
  RESULT=$?
  if [ "$RESULT" -eq 0 ]; then
    ls
  fi
}