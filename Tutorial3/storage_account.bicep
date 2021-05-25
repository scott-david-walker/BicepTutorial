param storageSKU string = 'Standard_LRS'
param location string = 'westeurope'
param storageName string = uniqueString(resourceGroup().id)

resource stg 'Microsoft.Storage/storageAccounts@2019-04-01' = {
  name: storageName
  location: location
  sku: {
    name: storageSKU
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true    
  }
}
