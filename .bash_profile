REACT_EDITOR=atom
EDITOR=atom
clear_xcode() {
    #Save the starting dir
    startingDir=$PWD

    #Go to the derivedData
    cd ~/Library/Developer/Xcode/DerivedData

    #Sometimes, 1 file remains, so loop until no files remain
    numRemainingFiles=1
    while [ $numRemainingFiles -gt 0 ]; do
        #Delete the files, recursively
        rm -rf *

        #Update file count
        numRemainingFiles=`ls | wc -l`
    done

    echo Done

    #Go back to starting dir
    cd $startingDir
}

alias instore='cd ~/repos/mobile.checkout-instore'

export NVM_DIR="/Users/Guigs/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export ANDROID_HOME=/usr/local/opt/android-sdk

##
# Your previous /Users/Guigs/.bash_profile file was backed up as /Users/Guigs/.bash_profile.macports-saved_2016-07-08_at_20:03:38
##

# MacPorts Installer addition on 2016-07-08_at_20:03:38: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# TMUX POWERLINE
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
