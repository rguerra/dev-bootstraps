#!/usr/bin/env bash

#ansible-playbook -vvv site.yml -i hosts.yml
ansible-playbook -i hosts playbook.yml --vault-password-file ~/.vault_pass.txt
