Connect-AzAccount -UseDeviceAuthentication
# PowerShell script to create a new Azure VM
$resourceGroupName = "MyResourceGroup"
$location = "EastUS"
$vmName = "MyVM"
$cred = Get-Credential
$image = Get-AzVMImage -Location $location -PublisherName Canonical -Offer UbuntuServer -Skus 20.04-LTS -Version latest

New-AzVM `
  -ResourceGroupName $resourceGroupName `
  -Name $vmName `
  -Location $location `
  -Credential $cred `
  -ImageId $image.Id `
  -Size "Standard_D2s_v3"
