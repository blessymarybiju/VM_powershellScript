# PowerShell script to create a new Azure VM
$resourceGroupName = "MyResourceGroup"
$location = "EastUS"
$vmName = "MyVM"
$cred = Get-Credential
New-AzVM `
  -ResourceGroupName $resourceGroupName `
  -Name $vmName `
  -Location $location `
  -Credential $cred `
  -ImageName "UbuntuLTS"
