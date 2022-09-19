
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export EDITOR='/usr/bin/vim'
#export EDITOR='~/sublime-wait'
#export VISUAL='/usr/local/bin/subl'

# for treehacks
export GOOGLE_APPLICATION_CREDENTIALS='/Users/rodrigo.castellon/Downloads/text2speechAnime-c684a2c6be25.json'

export PYTHONPATH='/Users/rodrigo.castellon/Desktop/misc/np2latex':$PYTHONPATH


# aliases

alias ll='ls -alhF'

# tmux stuff
alias tn="tmux -u -f $HOME/.tmux.conf new"
alias ta="tmux -u -f $HOME/.tmux.conf attach"
alias tl="tmux -u -f $HOME/.tmux.conf ls"
alias tk="tmux kill-session -a"

alias gc='git add . && git commit -am "stuff"'
alias gs='git status'
# tree "command"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"


##################
# minimal prompt #
##################

export PS1="$ "
