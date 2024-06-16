targetScope = 'resourceGroup'
//storage account
param location string
param storageAccountKind string
param storageAccountSKU string
param projectName string


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: '${projectName}storage'
  location: location
  kind: storageAccountKind
  sku: {
    name: storageAccountSKU
  }
 
}
