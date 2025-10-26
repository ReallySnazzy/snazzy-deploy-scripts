#!/run/current-system/sw/bin/bash
export PATH="$PATH:/run/current-system/sw/bin/"
cd /etc/snazzy-deploy
GIT_SSH_COMMAND='ssh -i /home/jscooper/.ssh/id_ed25519 -o IdentitiesOnly=yes' git pull origin master
nohup /etc/snazzy-deploy/restart-processes.sh &
