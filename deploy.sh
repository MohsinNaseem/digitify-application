#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update kubeconfig for EKS
echo "eks cluster updating for $AWS_REGION"
aws eks update-kubeconfig --region $AWS_REGION --name $EKS_CLUSTER_NAME || echo "Warning: Failed to update kubeconfig for EKS cluster $EKS_CLUSTER_NAME"

# Deploy using Helm
echo "deploying helm on $RELEASE_NAME"
helm upgrade --install $RELEASE_NAME ./helm --wait || echo "Warning: Failed to deploy on EKS cluster for $RELEASE_NAME"