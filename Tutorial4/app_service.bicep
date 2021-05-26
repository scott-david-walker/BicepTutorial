
var appServiceName = 'MyFirstAppservice'
resource appService 'Microsoft.Web/serverFarms@2020-06-01' = {
  name: appServiceName
  location: resourceGroup().location
  sku: {
    name: 'Y1'
    tier: 'Dynamic'
  }
}

output appServiceId string = appService.id
