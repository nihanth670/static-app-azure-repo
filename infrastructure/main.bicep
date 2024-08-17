// main.bicep

param location string = resourceGroup().location
param storageAccountName string
param containerName string = 'staticfiles'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource storageContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  parent: storageAccount
  name: containerName
  properties: {
    publicAccess: 'Blob'
  }
}

resource staticWebsite 'Microsoft.Storage/storageAccounts/staticWebsite@2022-09-01' = {
  parent: storageAccount
  properties: {
    indexDocument: 'index.html'
    errorDocument404Path: '404.html'
  }
}

// Outputs to reference in the pipeline or for further configuration
output storageAccountName string = storageAccount.name
output storageAccountUrl string = storageAccount.properties.primaryEndpoints.web

