alias jump='ssh ivy@160.79.2.244 -p 6656'

##
# Your previous /Users/ivy/.bash_profile file was backed up as /Users/ivy/.bash_profile.macports-saved_2010-01-25_at_15:46:00
##

# MacPorts Installer addition on 2010-01-25_at_15:46:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/bin:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/ivy/Dev/repos/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/ivy/Dev/repos/google-cloud-sdk/completion.bash.inc'
