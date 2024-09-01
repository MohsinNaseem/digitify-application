#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update kubeconfig for EKS
echo "eks cluster updating"
aws eks update-kubeconfig --region $AWS_REGION --name $EKS_CLUSTER_NAME

# Deploy using Helm
echo "deploying helm on $RELEASE_NAME"
helm upgrade --install $RELEASE_NAME ./helm --wait