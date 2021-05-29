param([string]$envName, [string]$prefix=""))
$bicepFile = './main.bicep'

az group create -l westeurope -n $envName

az deployment group create `
  --resource-group $envName `
  --template-file $bicepFile `
  --parameters resourcePrefix=$prefix