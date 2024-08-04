Connect-AzAccount -UseDeviceAuthentication
$resourceGroupName = "MyResourceGroup"
$location = "EastUS"
$vmName = "MyVM"
$cred = Get-Credential

# Get the latest Ubuntu image details
$image = Get-AzVMImage -Location $location  -Offer UbuntuServer -Skus 20.04-LTS -Version latest

# Create a new VM
New-AzVM `
  -ResourceGroupName $resourceGroupName `
  -Name $vmName `
  -Location $location `
  -Credential $cred `
 `
  -ImageOffer "UbuntuServer" `
  -ImageSkus "20.04-LTS" `
  -Size "Standard_D2s_v3"

