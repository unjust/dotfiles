
alias vi='vim'

# powershell {{

function _update_ps1() {
	PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# }}

# mupweb {{

set -a  # auto-export all subequent env variable assignments
source $HOME/.mupweb.config
set +a  # turn off auto-export of env variables

}}

umask 002
