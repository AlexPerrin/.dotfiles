# colour 
alias ls='ls --color=auto'
alias ip='ip --color=auto'
alias grep='grep --color=auto'

# some more ls aliases from ubuntu .bashrc
alias ll='ls -la'
alias la='ls -A'
alias upgrate='sudo apt update; sudo apt upgrade -y'
alias dps='docker ps --format "table{{.Names}}\t{{.Status}}\t{{.ID}}\t{{.Image}}"'

# docker runs
alias rcon='docker run -it --rm outdead/rcon ./rcon'
alias android='docker run -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -e EMULATOR_DEVICE="Nexus 5" -e WEB_VNC=true --device /dev/kvm --name android budtmo/docker-android:latest'
