# sudo systemctl start tor
# wait for tor to start...

: ${USER:=user}
: ${HOST:=$(cat hidden/hostname)}

torify ssh -v -o "ControlPath=~/.ssh/control/%C" -p 18181 -i ~/.ssh/id_ed25519 ${USER}@${HOST}
