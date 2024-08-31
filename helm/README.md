# Digitify App Helm Chart

This Helm chart deploys a microservice application on Kubernetes, including the following components:
- **Deployment**: Manages the Pods for the application.
- **Service**: Exposes the application within the Kubernetes cluster.
- **Namespace**: Isolates the resources for the application.
- **Ingress**: Manages external access to the application.
- **Horizontal Pod Autoscaler (HPA)**: Automatically scales the number of Pods based on CPU utilization.

## Prerequisites

- Kubernetes 1.27
- Helm 3.0+
- NGINX Ingress Controller (if using Ingress)

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
helm install my-release ./digitify-app
