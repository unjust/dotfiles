# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
PATH="/usr/local/java/bin:/usr/local/ant/bin:~/scripts:$PATH"
export PATH

alias gitzilla='/usr/bin/perl /usr/local/util/devel_scripts/gitzilla.pl'
alias chapsticklog='tail -f /usr/local/tomcat/logs/chapstick.log'

alias stopcat='sudo /etc/init.d/tomcat stop'
alias startcat='sudo /etc/init.d/tomcat start'
alias apachestart='sudo /usr/local/apache/bin/apachectl start'
alias apachestop='sudo /usr/local/apache/bin/apachectl stop'

export ANDROID_HOME=/Users/ivy/Dev/Android/android-sdk-macosx
export JAVA_HOME=/usr/local/java
export CATALINA_HOME=/usr/local/tomcat
export ANT_HOME=/usr/local/ant
export ANT_OPTS="$ANT_OPTS -Xms768m -Xmx768m"
export ANT_ALLOW_LATEST="1"
export LD_LIBRARY_PATH=/usr/lib
export MEETUP=/usr/local/meetup
export NETHOME=/nethome/ivy
export IPHONE=~/Dev/iPhone/meetup_iphone

ADB_PATH=$ANDROID_HOME'/platform-tools/adb'
alias logcat=$ADB_PATH' logcat -c;'$ADB_PATH' logcat -v raw browser:I Console:D *:S '

# aws
ACCESS_KEY_ID="AKIAIRYFRPROL2JYOHDQ"
ACCESS_KEY="Tj7/Cig42kq9hOCeVri0gl5cE+Hmdu64cbnH4TVK"

#Shows current branch in bash prompt
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[01;34m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
WHITE="\[\033[1;37m\]"
LIGHT_GRAY="\[\033[0;37m\]"
COLOR_NONE="\[\033[00m\]" 

function parse_git_dirty {
[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
} 

function prompt_func() {
prompt="${TITLEBAR}${LIGHT_GREEN}\u@\h${RED} ${LIGHT_BLUE}\w${GREEN}$(parse_git_branch)${BLUE} \$${COLOR_NONE} "
PS1="${prompt}"
}

PROMPT_COMMAND=prompt_func 

#git branch auto-completion
. ~/Dev/scripts/git-completion.bash

# Set standard CLASSPATH
if [ -f /usr/local/util/conf/classpath.sh ]; then
    . /usr/local/util/conf/classpath.sh
    export CLASSPATH=.:$CLASSPATH
fi
    
umask 002
