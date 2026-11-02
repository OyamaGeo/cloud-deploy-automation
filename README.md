# Cloud Deploy Automation – E-Commerce Application

An AWS DevOps project focused on building and implementing an automated CI/CD pipeline to deploy a React-based e-commerce application to Amazon EC2.

The project demonstrates practical experience with AWS developer tools, deployment automation, cloud infrastructure, and application delivery workflows.

## Project Overview

this is a React-based e-commerce application that provides product browsing, product details, shopping cart, checkout, login, and registration functionality.

The objective of this project is to automate the application's deployment process using AWS CI/CD services, reducing manual deployment tasks and establishing a repeatable release workflow.

## Project Objectives

- Build an automated CI/CD pipeline using AWS.
- Integrate source code management with AWS CodePipeline.
- Automate application builds using AWS CodeBuild.
- Configure application deployment using AWS CodeDeploy.
- Host the application on an Amazon EC2 instance.
- Practise deployment troubleshooting and cloud operations.

## Technology Stack

### Application Technologies

- React.js 18
- Redux
- Bootstrap 5
- React Router
- Fake Store API
- Node.js and npm

### AWS Services

| AWS Service      | Purpose                                |
| ---------------- | -------------------------------------- |
| Amazon EC2       | Application hosting                    |
| AWS CodePipeline | CI/CD workflow orchestration           |
| AWS CodeBuild    | Application build automation           |
| AWS CodeDeploy   | Application deployment automation      |
| AWS IAM          | Access control and service permissions |

## CI/CD Pipeline

The intended deployment workflow consists of the following stages:

1. **Source:** Application source code is maintained in GitHub.
2. **Build:** AWS CodeBuild installs dependencies and generates the production build.
3. **Deploy:** AWS CodeDeploy manages deployment to the Amazon EC2 instance.
4. **Hosting:** The deployed application is served from the EC2 environment.

## AWS Infrastructure

The project uses the following AWS resources:

| Resource               | Name                  |
| ---------------------- | --------------------- |
| EC2 Instance           | GlobalMart-Server     |
| CodePipeline           | GlobalMart-Pipeline   |
| CodeDeploy Application | GlobalMart-Catalog    |
| Deployment Group       | GlobalMart-Production |

## Architecture Diagram

See the [E-COMMERCE AWS CI/CD ARCHITECTURE](docs/architecture.md) for the deployment workflow and infrastructure design.



## Project Structure

```text
cloud-deploy-automation/
│
├── public/
├── src/
│   ├── components/
│   ├── pages/
│   └── redux/
│
├── build/
├── package.json
├── package-lock.json
└── README.md
```

## Running the Application Locally

Clone the repository:

```bash
git clone https://github.com/OyamaGeo/cloud-deploy-automation.git
```

Navigate into the project directory:

```bash
cd cloud-deploy-automation
```

Install dependencies:

```bash
npm install
```

Start the development server:

```bash
npm start
```

Create a production build:

```bash
npm run build
```

## Current Deployment Status

**Status: Deployment troubleshooting in progress.**

The application build stage has succeeded previously. The CodeDeploy stage encountered an issue that is currently being investigated.

The project will be updated with verified deployment results, architecture documentation, and screenshots after successful deployment.

## Skills Demonstrated

- AWS CI/CD implementation
- Cloud deployment automation
- React application build management
- Amazon EC2 administration
- AWS IAM permissions and roles
- Deployment troubleshooting
- Git and GitHub version control

## Repository

GitHub: [https://github.com/OyamaGeo/cloud-deploy-automation](https://github.com/OyamaGeo/cloud-deploy-automation)




