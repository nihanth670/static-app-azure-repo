# Deploying a Static Website on Azure Using ARM/Bicep Templates and Azure DevOps Pipelines

## Project Overview

This project demonstrates how to deploy a static website on Azure using Bicep templates for infrastructure provisioning and Azure DevOps for automated deployment. The deployment process includes creating Azure resources (like a storage account), enabling static website hosting, and automating the deployment using an Azure DevOps pipeline.

## Directory Structure

```plaintext
├── .azure-pipelines
│   └── azure-pipelines.yml         # Azure DevOps pipeline configuration
├── infrastructure
│   ├── main.bicep                  # Bicep template for Azure resources
│   └── parameters.json             # Parameters file for Bicep template
├── static-website
│   ├── index.html                  # Main HTML file for the static website
│   ├── style.css                   # CSS file for styling
│   └── 404.html                    # Custom 404 error page
└── README.md                       # This file
