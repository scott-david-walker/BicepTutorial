param resourcePrefix string
var functionAppName = '${resourcePrefix}testfuncappscott'

module appService './app_service.bicep' = {
  name: 'appServiceDeploy'
}

module functionStorage './storage_account.bicep' = {
  name: 'functionStorage'
}

module functionApp './function_app.bicep' = {
  name: 'functionapp'
  params: {
    appServiceId: appService.outputs.appServiceId
    storageAccount: functionStorage.outputs.storageAccount
    functionAppName: functionAppName
  }
  dependsOn: [
    functionStorage 
    appService
  ]
}
