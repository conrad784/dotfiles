# manage dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# directories
alias work='cd ~/IWR/'
alias stud='cd ~/Nextcloud/Studium/'

# productivity shortcuts
alias rgrep='grep -R'
alias ll='ls -l'
alias rm='rm -I'
alias e='emacsclient -nc'
alias open='xdg-open'
alias bgd="bg && disown"
alias ssh-dontstore="ssh -o \"UserKnownHostsFile /dev/null\""
alias linesofcode='f(){ ( find . -name "$@" -print0 | xargs -0 cat ) | wc -l; unset -f f; }; f'
alias unixtime='date +%s'
alias mountiso='mount -o loop -t iso9660'
alias condaStart='source /opt/anaconda/bin/activate root'
alias condaStop='source /opt/anaconda/bin/deactivate root'
alias getLoad='ps -o %cpu,%mem,cmd -C'
alias initRemoteGit='~/scripts/initRemoteGit.sh'
alias ip='ip --color'
alias ipb='ip --color --brief'
alias tempDocker='docker run -it -v ~/dockerTransfer/:/transfer'
alias pandocMarkdownToHTML='f(){ pandoc "$@" -f markdown -t html -s --mathjax; unset -f f; }; f'
alias remoteWindows="rdesktop -g $(xrandr -q | awk '/Screen 0/ {print int($8/1.28) $9 int($10/1.2)}' | sed 's/,//g') -r sound:off -r disk:share=/home/conrad/dockerTransfer -x l -z -P -u Administrator -p -"

# network
alias wieistmeineip='~/scripts/queryIP.sh'
alias hostsonline='nmap -sP 192.168.178.1/24'
alias availableciphers='nmap -sV --script ssl-enum-ciphers -p 443'
alias webdev='sudo /opt/lampp/manager-linux-x64.run'
alias simpleHttp='python -m http.server 8000 --bind 127.0.0.1'

# arch
alias pacclean3='sudo paccache -rk3'

# misc
alias wetterHD='curl wttr.in/Heidelberg,Germany'
alias tellme='fortune -o | cowsay'
alias downloadVideo="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best/'"
alias downloadAudio="youtube-dl --extract-audio --audio-format mp3"
alias webcamMplayer='mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 15 -vf screenshot'
alias toggleSleep='xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T'
alias myHcloud='hcloud server create --image debian-9 --ssh-key conrad@kronos --user-data-from-file ~/hcloud-init'