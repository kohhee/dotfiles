# alias
alias ls='ls -l -GF'
alias la='ls -a'

# set file colors
export LSCOLORS=gxfxcxdxbxegedabagacad

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Pythonz
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc
export PATH=$HOME/.pythonz/pythons/CPython-2.7.8/bin:$PATH

# virtulenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source `which virtualenvwrapper.sh`

# Auto workon
# http://d.hatena.ne.jp/toromoti/20140313/1394728624 
. .workon.sh

function prompt_command() {
    workon_workon
}

PROMPT_COMMAND=prompt_command
