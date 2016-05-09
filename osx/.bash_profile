# export EDITOR='subl -w'
export EDITOR='vim'
export NVM_DIR=~/.nvm
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

test -f ~/.git-completion.bash && . $_

# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n \[$(tput sgr 0 1)\]\w\[$(tput sgr0)\]\[$(tput setaf 4)\]\$(parse_git_branch)\n\[$(tput bold)\]\[$(tput setaf 2)\] ➜ \[$(tput sgr0)\]"
#export TERM="xterm-color" PS1='\e[0;33m\u\e[0m@\e[0;32m\h\e[0m \e[0;34m\w\n \e[0m\$ '
export PYTHONPATH=/Users/nando/Code/opencv/build/lib/python2.7/site-packages:$PYTHONPATH
export DYLD_LIBRARY_PATH=/Users/nando/Code/opencv/build/lib:$DYLD_LIBRARY_PATH

source ~/.aliases
source $(brew --prefix nvm)/nvm.sh


# export $GOPATH=$GOPATH:~/.go/GlobalSearch

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.4/bin

# As of go 1.2, a valid GOPATH is required to use the `go get` command:
PATH=$PATH:/usr/local/opt/go/libexec/bin

# MacPorts Installer addition on 2015-06-23_at_16:53:26: adding an appropriate PATH variable for use with MacPorts.
PATH=$PATH:/opt/local/bin:/opt/local/sbin

export PATH
