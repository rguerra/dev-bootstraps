terraform plan -destroy -out=terraform.tfplan \
  -var "linode_token=${LINODE_PAT}" \
  -var "pub_key=$HOME/.ssh/id_ed25519.pub" \
  -var "pvt_key=$HOME/.ssh/id_ed25519" \
  -var "ssh_fingerprint=$SSH_FINGERPRINT"

terraform apply terraform.tfplan
