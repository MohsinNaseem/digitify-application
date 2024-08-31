#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Variables
NAMESPACE="default"  # Change to your desired namespace
RELEASE_NAME="my-release"  # Change to your desired release name
IMAGE_NAME=$IMAGE_NAME  # Your Docker image name
IMAGE_TAG=$IMAGE_TAG  # Your Docker image tag

# Update kubeconfig for EKS
aws eks update-kubeconfig --region $AWS_REGION --name $EKS_CLUSTER_NAME

# Deploy using Helm
helm upgrade --install $RELEASE_NAME ./helm \
  --namespace $NAMESPACE \
  --set image.repository=$IMAGE_NAME \
  --set image.tag=$IMAGE_TAG \
  --wait
