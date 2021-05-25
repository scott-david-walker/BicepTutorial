module appService './app_service.bicep' = {
  name: 'appServiceDeploy'
}

module functionStorage './storage_account.bicep' = {
  name: 'functionStorage'
}
