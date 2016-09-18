###############################################################################
# PATH                                                                        #
###############################################################################

export GEM_HOME=$HOME/.gem
export PATH=$PATH:$HOME/.scripts:$GEM_HOME/bin

###############################################################################
# EDITOR                                                                      #
###############################################################################

# Set TextMate as the default editor.
export EDITOR="mate -w"

###############################################################################
# BASH COMPLETION                                                             #
###############################################################################

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

###############################################################################
# PROMPT                                                                      #
###############################################################################

. `brew --prefix`/etc/bash_completion.d/git-prompt.sh

export PS1="\u@\h:\W\$(__git_ps1) \$ "

###############################################################################
# ALIASES                                                                     #
###############################################################################

# Enable colorized output.
alias ls="ls -G"

# Show hidden elements and display output as a list.
alias ll="ls -la"