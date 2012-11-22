# 研究用
export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH
export MACOSX_DEPLOYMENT_TARGET=10.6
export WORKON_HOME=$HOME/.virtualenvs
source `which virtualenvwrapper.sh`

# ls実行時のカラー設定
export LS_COLORS="no=00;31:fi=00;37:di=00;36:ln=00;31:ex=00;31"

# エイリアスの設定
alias ls='gls --color'
alias la='ls -a'
alias ll='ls -la'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias man='env LANG=ja_JP.UTF-8 /usr/local/bin/jman'
alias openssl10='/usr/local/ssl/bin/openssl'
