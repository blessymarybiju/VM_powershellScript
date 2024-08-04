Connect-AzAccount -UseDeviceAuthentication
# Parameters
$resourceGroupName = "MyResourceGroup"
$location = "EastUS"
$storageAccountName = "mystorageaccount$((Get-Random -Maximum 10000))"
$containerName = "mycontainer"

# Create a new resource group if it doesn't exist
$resourceGroup = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue
if (-not $resourceGroup) {
    Write-Output "Creating resource group '$resourceGroupName'..."
    New-AzResourceGroup -Name $resourceGroupName -Location $location
} else {
    Write-Output "Resource group '$resourceGroupName' already exists."
}

# Create a new storage account
Write-Output "Creating storage account '$storageAccountName'..."
$storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroupName `
    -Name $storageAccountName `
    -Location $location `
    -SkuName "Standard_LRS" `
    -Kind "StorageV2"

Write-Output "Storage account '$storageAccountName' created successfully."

# Get the storage account key
$storageAccountKey = (Get-AzStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storageAccountName).Value[0]

# Create a new Blob container
$context = New-AzStorageContext -StorageAccountName $storageAccountName -StorageAccountKey $storageAccountKey
Write-Output "Creating blob container '$containerName'..."
New-AzStorageContainer -Name $containerName -Context $context

Write-Output "Blob container '$containerName' created successfully."

# Output Storage Account and Container details
Write-Output "Storage Account Name: $storageAccountName"
Write-Output "Blob Container Name: $containerName"
Write-Output "Script execution completed."
