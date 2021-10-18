#!/usr/bin/env bash
if [ $# -eq 0 ]
  then
    export VERBOSE=""
  else
    export VERBOSE=$1
fi
#ansible-playbook -vvv site.yml -i hosts.yml
ansible-playbook $VERBOSE -i lab_hosts lab_playbook_ln.yml --vault-password-file ~/.vault_pass.txt --extra-vars "ssh_file=~/.ssh/id_ed25519.pub"


