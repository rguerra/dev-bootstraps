#!/usr/bin/env bash

#ansible-playbook -vvv site.yml -i hosts.yml
ansible-playbook -vvvv -i hosts playbook.yml --vault-password-file ~/.vault_pass.txt
