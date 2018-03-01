alias rgrep='grep -R'
alias ll='ls -l'
alias work='cd ~/IWR/'
alias stud='cd ~/Nextcloud/Studium/'
alias rm='rm -I'
alias hostsonline='nmap -sP 192.168.178.1/24'
alias monitoringMail='ssh -L 8080:localhost:19999 -N mail'
alias muninMail='ssh -L 8080:localhost:80 -N mail'

alias webdev='sudo /opt/lampp/manager-linux-x64.run'
alias simpleHttp='python -m http.server 8000 --bind 127.0.0.1'
alias pacclean3='sudo paccache -rk3'

alias wetterHD='curl wttr.in/Heidelberg,Germany'

alias condaStart='source /opt/anaconda/bin/activate root'
alias condaStop='source /opt/anaconda/bin/deactivate root'

alias toggleSleep='xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T'

alias wieistmeineip='~/git/MyProjects/queryIP.sh'

alias tellme='fortune -o | cowsay'
alias unixtime='date +%s'
alias e='emacsclient -nc'
alias open='xdg-open'

alias mountiso='mount -o loop -t iso9660'
alias bgd="bg && disown"
alias ssh-dontstore="ssh -o \"UserKnownHostsFile /dev/null\""
alias linesofcode='f(){ ( find . -name "$@" -print0 | xargs -0 cat ) | wc -l; unset -f f; }; f'
alias webcamMplayer='mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 15 -vf screenshot'