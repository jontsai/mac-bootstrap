# .bash_profile

##
# prompt
#
# \d - Current date
# \t - Current time
# \h - Host name
# \# - Command number
# \u - User name
# \W - Current working directory (ie: Desktop/)
# \w - Current working directory, full path (ie: /Users/Admin/Desktop)
# Default Mac: PS1="\h:\W \u$"
# Ubuntu Style: export PS1="\u@\h:\w$ "
export PS1="\t \u@\h:\w$ "

##
# local scripts
PATH=$PATH:~/bin:/usr/local/mysql/bin
export PATH

##
# exports
export EDITOR=/usr/bin/emacs

##
# commands
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias pu='pushd'
alias po='popd'
alias rm='rm -i'
alias cp='cp -i'
alias grep='grep --color'
alias svns='svn status'

##
# utils
alias 7z='/Applications/7za'
alias edithosts='sudo emacs /etc/hosts'
alias editapache='sudo emacs /private/etc/apache2/users/`whoami`.conf'
alias keyup='ssh-start.sh'
alias flushdns='dscacheutil -flushcache'
alias rmemacsbackups='for FILE in `find . -name "*~"`; do rm -i $FILE; done'
alias hidden_files_show='defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder'
alias hidden_files_hide='defaults write com.apple.finder AppleShowAllFiles FALSE;killall Finder'
alias restart-firefox='killall firefox-bin;echo "Waiting for firefox-bin to die";sleep 3;echo "Restarting Firefox";firefox'
alias restartapache='sudo apachectl graceful'
alias setlocalhostname='sudo scutil --set HostName'
alias tailerr='tail -f /var/log/apache2/error_log'
alias taillog='tail -f /var/log/apache2/access_log'
alias updatedb='sudo /usr/libexec/locate.updatedb'

##
# directories
alias bin='cd ~/bin'
alias code='cd ~/code'
alias desktop='cd ~/Desktop'
alias dload='cd ~/dload'
alias docs='cd ~/Documents'
alias music='cd ~/music'
alias pics='cd ~/pics'
alias progs='cd ~/progs'
alias temp='cd ~/tmp'
alias www='cd ~/www'

##
# programs
# apps
alias doc='open -a Microsoft\ Word'
alias entourage='open -a Microsoft\ Entourage'
alias eclipse='open -a eclipse'
alias ical='open -a iCal'
alias isync='open -a iSync'
alias ppt='open -a Microsoft\ PowerPoint'
alias thunderbird='open -a Thunderbird'
alias txt='open -a TextEdit'
alias vmware='open -a VMware\ Fusion'
alias xcode='open -a Xcode'
alias xls='open -a Microsoft\ Excel'
# media
alias audacity='open -a Audacity'
alias imovie='open -a iMovie'
alias itunes='open -a iTunes'
alias lastfm='open -a Last.fm.app'
alias mp3gain='open -a MacMP3Gain'
alias photobooth='open -a Photo\ Booth'
alias vlc='open -a VLC'
# net
alias adium='open -a Adium'
alias chrome='open -a Google\ Chrome'
alias cvpn='open -a "Cisco AnyConnect Secure Mobility Client"'
alias facetime='open -a FaceTime'
alias firefox='open -a Firefox'
alias flickr='open -a Flickr\ Uploadr'
alias msnmsg='open -a Microsoft\ Messenger'
alias safari='open -a Safari'
alias skype='open -a Skype'
alias ymsg='open -a Yahoo!\ Messenger'
# util
alias diskutil='open -a /Applications/Utilities/Disk\ Utility.app'
alias keychain='open -a /Applications/Utilities/Keychain\ Access.app'
alias prefs='open -a System\ Preferences'
alias qs='open -a Quicksilver'

##
# ssh personal
alias ssh-xyzw="ssh `whoami`@xyzw.com"

##
# Android SDK
export PATH=/Library/android-sdk-macosx/tools:/Library/android-sdk-macosx/platform-tools:$PATH

##
# For Django
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/mysql/lib/"

##
# Setup Amazon EC2 Command-Line Tools
export AWS_ELB_HOME=~/.aws
export AWS_HOME=~/.aws
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $AWS_HOME/pk-*.pem`
export EC2_CERT=`ls $AWS_HOME/cert-*.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
export AWS_CREDENTIAL_FILE=$AWS_HOME/aws-credential-file.txt

##
# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
# end MacPorts

test -r /sw/bin/init.sh && . /sw/bin/init.sh

##
# Various .bash_profile.* customizations
[[ -s "$HOME/.bash_profile.xyzw" ]] && source "$HOME/.bash_profile.xyzw"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
