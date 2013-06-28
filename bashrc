########
# PATH #
########

export PATH="/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH"
export PATH="/usr/local/bin:${PATH}"
export PATH="/usr/local/mysql/bin:${PATH}"
export PATH="$HOME/usr/local/bin:${PATH}"

##############
# Virtualenv #
##############

export WORKON_HOME=~/Envs
mkdir -p "$WORKON_HOME"
venvwrappersh=/usr/local/share/python/virtualenvwrapper.sh
[[ -r "$venvwrappersh" ]] && source "$venvwrappersh"

############
# Perlbrew #
############

perlbrewrc="$HOME/perl5/perlbrew/etc/bashrc"
[[ -r "$perlbrewrc" ]] && source "$perlbrewrc"

###################
# Git bash prompt #
###################

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=auto
[[ -f "$HOME/git-completion.bash" ]] && source "$HOME/git-completion.bash"
[[ -f "$HOME/git-prompt.sh" ]] && source "$HOME/git-prompt.sh"
export PS1='[\w$(__git_ps1 " (%s)")]\$ '

##########
# Editor #
##########

export EDITOR="/usr/bin/vim"

###########
# Aliases #
###########

aliasrc="$HOME/.aliases"
[[ -r "$aliasrc" ]] && source "$aliasrc"
