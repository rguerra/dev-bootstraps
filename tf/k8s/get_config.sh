#!/bin/bash

CLUSTER_ID=$(terraform output cluster-id)
CLUSTER_ID="${CLUSTER_ID%\"}"
CLUSTER_ID="${CLUSTER_ID#\"}"
OUTFILE="config"
export KUBECONFIG="~/.kube/config"
echo "getting cluster config for $CLUSTER_ID"
#echo "https://api.digitalocean.com/v2/kubernetes/clusters/$CLUSTER_ID/kubeconfig" 
curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer ${DO_PAT}" "https://api.digitalocean.com/v2/kubernetes/clusters/$CLUSTER_ID/kubeconfig" > $OUTFILE
#mv $OUTFILE ~/.kube/config
