# Note: Because the $ErrorActionPreference is "Stop", this script will stop on first failure.
$ErrorActionPreference = "stop"

#"Login to the subscription with your Azure account..."
#Login-AzureRmAccount -SubscriptionName "Bouvet - Visual Studio Enterprise"

#TODO: Use the line below instead of Login above, once you're authenticated.
#Select-AzureRmSubscription -SubscriptionName "Bouvet - Visual Studio Enterprise" | Out-Null

#"Creating new resource group for the demo lab..."
#New-AzureRmResourceGroup -Name $ResourceGroupName -Location $ResourceGroupLocation

"Start deploying the demo lab using the ARM templates..."
New-AzureRmResourceGroupDeployment -Name "SP2016-3" -ResourceGroupName "dev" -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json -Verbose