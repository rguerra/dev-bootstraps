
# enable logging to stdout, so you can see what Terraform is trying to do
export TF_LOG=1
export LINODE_PAT=$(cat ~/.ssh/linode_access_token)
export SSH_FINGERPRINT=$(ssh-keygen -E md5 -lf ~/.ssh/id_ed25519 | awk '{print $2}'| sed -e s/^MD5://)
