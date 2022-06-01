#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
GREEN="$(tput setaf 2)"
RESET="$(tput sgr0)"


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
PS1='${GREEN}\u \W > ${RESET}'

# --- ALIAS's --- 
. ~/.shprofile
##alias suvi='sudo vim'
# ALIAS FOR PODCAST APP
#alias pod='castero'
# ALIAS FOR PROTON-UP PROTON-GE UPDATER
alias proge="python -m protonup"
# ALIAS FOR LIBRESPOT SO IT LOGINS IN ON RUN
#alias lspt="librespot -U 5SP5PL9KPMY8N18GBT0JU8VIR -P KOIKMkoikm"
# ALIAS NIGHT
#alias night="sudo systemctl hibernate"
#alias vim="nvim"

#alias makin="sudo make install"
# alias do='sudo !!'

# --- PATH EXPORTS ---
export path="/home/zooki/.emacs.d/bin:$path"
# FIXING PIP NOT IN PATH
export path="$home/.local/bin:$path"
export path="/home/zooki/applications:$path"
# --- end of mercy file ---alias suvi='sudo vim'


source /usr/share/bash-completion/bash_completion

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
