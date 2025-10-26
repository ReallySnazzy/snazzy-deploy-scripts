#!/run/current-system/sw/bin/bash
export PATH="$PATH:/run/current-system/sw/bin/"
nohup /etc/snazzy-deploy/restart-processes.sh &
