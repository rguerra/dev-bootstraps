#!/usr/bin/env bash
if [ $# -eq 0 ]
  then
    export VERBOSE=""
  else
    export VERBOSE=$1
fi
ansible-playbook $VERBOSE -i lab_hosts k8s_playbook.yml --vault-password-file ~/.vault_pass.txt --extra-vars @k8s_vars.yml
