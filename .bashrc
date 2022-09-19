
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

# Regular
txtblk="$(tput setaf 0 2>/dev/null)"  # Black
txtred="$(tput setaf 1 2>/dev/null)"  # Red
txtgrn="$(tput setaf 2 2>/dev/null)"  # Green
txtylw="$(tput setaf 3 2>/dev/null)"  # Yellow
txtblu="$(tput setaf 4 2>/dev/null)"  # Blue
txtpur="$(tput setaf 5 2>/dev/null)"  # Purple
txtcyn="$(tput setaf 6 2>/dev/null)"  # Cyan
txtwht="$(tput setaf 7 2>/dev/null)"  # White

# Bold
bldblk="$(tput setaf 0 2>/dev/null)$(tput bold 2>/dev/null)"  # Black
bldred="$(tput setaf 1 2>/dev/null)$(tput bold 2>/dev/null)"  # Red
bldgrn="$(tput setaf 2 2>/dev/null)$(tput bold 2>/dev/null)"  # Green
bldylw="$(tput setaf 3 2>/dev/null)$(tput bold 2>/dev/null)"  # Yellow
bldblu="$(tput setaf 4 2>/dev/null)$(tput bold 2>/dev/null)"  # Blue
bldpur="$(tput setaf 5 2>/dev/null)$(tput bold 2>/dev/null)"  # Purple
bldcyn="$(tput setaf 6 2>/dev/null)$(tput bold 2>/dev/null)"  # Cyan
bldwht="$(tput setaf 7 2>/dev/null)$(tput bold 2>/dev/null)"  # White

# Underline
undblk="$(tput setaf 0 2>/dev/null)$(tput smul 2>/dev/null)"  # Black
undred="$(tput setaf 1 2>/dev/null)$(tput smul 2>/dev/null)"  # Red
undgrn="$(tput setaf 2 2>/dev/null)$(tput smul 2>/dev/null)"  # Green
undylw="$(tput setaf 3 2>/dev/null)$(tput smul 2>/dev/null)"  # Yellow
undblu="$(tput setaf 4 2>/dev/null)$(tput smul 2>/dev/null)"  # Blue
undpur="$(tput setaf 5 2>/dev/null)$(tput smul 2>/dev/null)"  # Purple
undcyn="$(tput setaf 6 2>/dev/null)$(tput smul 2>/dev/null)"  # Cyan
undwht="$(tput setaf 7 2>/dev/null)$(tput smul 2>/dev/null)"  # White

# Background
bakblk="$(tput setab 0 2>/dev/null)"  # Black
bakred="$(tput setab 1 2>/dev/null)"  # Red
bakgrn="$(tput setab 2 2>/dev/null)"  # Green
bakylw="$(tput setab 3 2>/dev/null)"  # Yellow
bakblu="$(tput setab 4 2>/dev/null)"  # Blue
bakpur="$(tput setab 5 2>/dev/null)"  # Purple
bakcyn="$(tput setab 6 2>/dev/null)"  # Cyan
bakwht="$(tput setab 7 2>/dev/null)"  # White

# Reset
txtrst="$(tput sgr 0 2>/dev/null)"  # Text Reset

# Depth of `$PWD` is decided by this.
export PROMPT_DIRTRIM=2

# `exit_code' Should be first command in `PROMPT_COMMAND' to be
# executed or else return status will always be 0/true (If functions in
# `PROMPT_COMMAND' are written proper :)
[ -n "$PROMPT_COMMAND" ] && PROMPT_COMMAND="exit_code;$PROMPT_COMMAND" ||
    PROMPT_COMMAND="exit_code"

exit_code() {
    EXIT="$?"

    # PS1 needs to be reset or else it will be appended every time to
    # previous one.
    PS1=""

    [ "$EXIT" = "0" ] && EXITCOL=$bldwht || EXITCOL=$bldred

    # This will be final prompt, whatever set earlier will be
    # overwritten by this.
    export PS1="\[\$EXITCOL\]\w\[\033[01;38;5;208m\]\$([ \j -gt 0 ] && echo [\j])\[\$txtrst\]$ "
}
