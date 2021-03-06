#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\W$(parse_git_branch)\$ '

PATH=./node_modules/.bin:$PATH

PATH=$PATH:$HOME/scripts

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=$PATH:$HOME/.gem/ruby/1.9.1/bin
