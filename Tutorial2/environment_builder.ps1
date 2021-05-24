
$bicepFile = './main.bicep'

az group create -l westeurope -n MyResourceGroup

az deployment group create `
  --resource-group MyResourceGroup `
  --template-file $bicepFile