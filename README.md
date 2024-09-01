# Spring Boot Application

This is a Spring Boot application that is containerized using Docker and deployed to an Amazon EKS Kubernetes cluster using Helm charts. The project includes a CI/CD pipeline configured in GitHub Actions for automated testing, building, and deployment.

## Features

- **Spring Boot**: A Java-based framework used to build the application.
- **Docker**: The application is containerized using a Dockerfile.
- **Helm**: Helm charts are used to manage Kubernetes deployments.
- **CI/CD Pipeline**: A GitHub Actions workflow is set up to automate the build, test, and deployment process.

## Project Structure

- **Dockerfile**: Used to build the Docker image for the Spring Boot application.
- **helm/**: Contains Helm charts and the `values.yaml` file for deploying the application to a Kubernetes cluster.
- **.github/workflows/**: Contains the CI/CD pipeline configuration for GitHub Actions.

## Getting Started.

### Prerequisites

- **Java 17**: Ensure that Java 17 is installed on your system.
- **Maven**: Maven is required to build the application.
- **Docker**: Docker is used to containerize the application.
- **Helm**: Helm is used for Kubernetes deployments.
- **AWS CLI**: AWS CLI is required to authenticate and push Docker images to Amazon ECR.

### Building and Running Locally

1. **Clone the repository**:
   ```sh
   git clone https://github.com/your-username/your-repository.git
   cd your-repository