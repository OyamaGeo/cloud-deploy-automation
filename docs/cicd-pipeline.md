# AWS CI/CD Pipeline Documentation

## 1. Overview

This document describes the CI/CD pipeline designed to automate the deployment of the GlobalMart React E-Commerce application to Amazon EC2 using AWS developer tools.

The pipeline integrates GitHub with AWS CodePipeline, CodeBuild, and CodeDeploy to establish an automated application delivery workflow.

## 2. AWS Services Used

| AWS Service | Function |
|---|---|
| GitHub | Source code management |
| AWS CodePipeline | Automates and coordinates pipeline stages |
| AWS CodeBuild | Installs dependencies and builds the React application |
| AWS CodeDeploy | Automates application deployment to EC2 |
| Amazon EC2 | Provides the application hosting environment |
| AWS IAM | Manages permissions and service access |

## 3. Pipeline Stages

### Stage 1: Source – GitHub

GitHub serves as the source repository for the GlobalMart application.

When application changes are pushed to the connected repository, CodePipeline receives the updated source code.

### Stage 2: Build – AWS CodeBuild

CodeBuild is responsible for preparing the application for deployment.

Expected build activities include:

- Installing application dependencies.
- Executing the React production build.
- Generating deployable application files.
- Preparing build artifacts for the deployment stage.

### Stage 3: Deploy – AWS CodeDeploy

CodeDeploy manages the deployment of application files to the target EC2 instance.

It coordinates the deployment lifecycle and executes the configured deployment instructions.

### Stage 4: Hosting – Amazon EC2

Amazon EC2 provides the compute environment for hosting the GlobalMart application.

The target instance is named `GlobalMart-Server`.

## 4. AWS Resource Configuration

| Resource | Configuration |
|---|---|
| CodePipeline | GlobalMart-Pipeline |
| CodeDeploy Application | GlobalMart-Catalog |
| Deployment Group | GlobalMart-Production |
| EC2 Instance | GlobalMart-Server |

## 5. Deployment Status

The CodeBuild stage has previously completed successfully.

The CodeDeploy stage encountered an error during deployment. Troubleshooting is ongoing.

A successful end-to-end deployment has not yet been verified.

## 6. Project Learning Outcomes

This project provides practical experience with:

- CI/CD pipeline orchestration.
- Automated application builds.
- AWS deployment management.
- EC2 administration.
- IAM permissions and roles.
- Cloud deployment troubleshooting.
- Application delivery workflows.

## 7. Future Improvements

- Resolve the CodeDeploy deployment issue.
- Verify automated deployments to EC2.
- Implement deployment validation.
- Capture successful deployment evidence.
- Improve application monitoring and logging.
