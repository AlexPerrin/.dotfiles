# shorthands
alias upgrate='sudo apt update; sudo apt upgrade -y'
alias bat='batcat'

# some more ls aliases from ubuntu .bashrc
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# docker
alias rcon='docker run -it --rm outdead/rcon ./rcon'
alias android='docker run -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -e EMULATOR_DEVICE="Nexus 5" -e WEB_VNC=true --device /dev/kvm --name android-container budtmo/docker-android:latest'

# color 
alias ls='ls --color=auto'
alias ip='ip --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'