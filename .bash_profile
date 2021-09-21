# sublime text stuff from https://stackoverflow.com/questions/16199581/open-sublime-text-from-terminal-in-macos
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='vim'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH=/usr/local/opt/ruby/bin:$PATH

#Added colored terminal stuff from http://osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -laAtr'

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rodrigo.castellon/google-cloud-sdk/path.bash.inc' ]; then . '/Users/rodrigo.castellon/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rodrigo.castellon/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/rodrigo.castellon/google-cloud-sdk/completion.bash.inc'; fi

# for NLP cluster
alias homefs='sshfs scdt: ~/sc -o ssh_command='\''ssh -t rjcaste@jamie.stanford.edu ssh'\'''
alias juicefs='sshfs rjcaste@jamie.stanford.edu:/juice/scr/rjcaste ~/juice'

alias linux='ssh aoeu@192.168.0.21'
alias pipessh='while true; do ssh -N -L 8889:localhost:8889 aoeu@192.168.0.21; done'
alias m="kinit --keychain rjcaste@CS.STANFORD.EDU; ssh rjcaste@jamie.stanford.edu -t 'ssh sc'"
alias b="kinit --keychain rjcaste@CS.STANFORD.EDU; ssh rjcaste@jamie.stanford.edu -t"
