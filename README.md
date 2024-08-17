# Deploying a Static Website on Azure Using ARM/Bicep Templates and Azure DevOps Pipelines

## Project Overview

This project demonstrates how to deploy a static website on Azure using Bicep templates for infrastructure provisioning and Azure DevOps for automated deployment. The deployment process includes creating Azure resources (like a storage account), enabling static website hosting, and automating the deployment using an Azure DevOps pipeline.

## Bicep Template Parameters and Outputs

### Input Parameters

1. **`location`** (string)
   - Specifies the Azure region where the resources will be deployed. Defaults to the location of the resource group.
   - **Example Value:** `"East US"`

2. **`storageAccountName`** (string)
   - The name of the Azure Storage Account to be created. This name must be globally unique and can only contain lowercase letters and numbers.
   - **Example Value:** `"mystorageaccount123"`

3. **`containerName`** (string)
   - The name of the blob container within the storage account. This container is typically used for storing website files. The default value is `"staticfiles"`.
   - **Example Value:** `"websitecontainer"`

### Output Values

1. **`storageAccountName`** (string)
   - The name of the storage account created by the Bicep template. Useful for referencing the storage account in subsequent operations.
   - **Example Value:** `"mystorageaccount123"`

2. **`storageAccountUrl`** (string)
   - The primary endpoint URL of the static website hosted on the storage account. Use this URL to access the website after deployment.
   - **Example Value:** `"https://mystorageaccount123.z13.web.core.windows.net/"`


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
