#!/run/current-system/sw/bin/bash
cd /etc/snazzy-deploy
GIT_SSH_COMMAND='ssh -i /home/jscooper/.ssh/id_ed25519 -o IdentitiesOnly=yes' git pull origin master
systemctl restart snazzyfellas-deploy-frontend
systemctl restart snazzyfellas-deploy-api
