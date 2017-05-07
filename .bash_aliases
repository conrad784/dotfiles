alias rgrep='grep -R'
alias ll='ls -l'
alias work='cd ~/IWR/'
alias stud='cd ~/Nextcloud/Studium/'
alias eclipseEmbedded='/opt/eclipseKepler/eclipse &'
#alias cp='cp -i' #ein bisschen nervig
alias hostsonline='nmap -sP 192.168.178.1/24'
alias monitoringMail='ssh -L 8080:localhost:19999 -N mail'
alias muninMail='ssh -L 8080:localhost:80 -N mail'

alias webdev='sudo /opt/lampp/manager-linux-x64.run'
alias pacclean3='sudo paccache -rk3'

alias wetter='curl wttr.in/Heidelberg'

alias condaStart='source /opt/anaconda/bin/activate root'
alias condaStop='source /opt/anaconda/bin/deactivate root'

alias toggleSleep='xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T'