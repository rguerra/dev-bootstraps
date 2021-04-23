#!/usr/bin/env bash
if [ $# -eq 0 ]
  then
    export VERBOSE=""
  else
    export VERBOSE=$1
fi
#ansible-playbook -vvv site.yml -i hosts.yml
ansible-playbook $VERBOSE -i hosts playbook.yml --vault-password-file ~/.vault_pass.txt
