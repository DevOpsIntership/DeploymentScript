resource storage 'Microsoft.Storage/storageAccounts@2022-05-01'={
  name: 'adkwolek'
  location:resourceGroup().location
  sku:{
    name:'Standard_LRS'
  }
  kind:'StorageV2'
}

resource deployment 'Microsoft.Resources/deploymentScripts@2020-10-01'={
  name: 'azcliscript'
  location:resourceGroup().location
  kind:'AzureCLI'
  identity:{
    userAssignedIdentities:{
      '/subscriptions/c726bf38-5524-4f36-ae0c-e87f35b14d51/resourcegroups/psautomation/providers/Microsoft.ManagedIdentity/userAssignedIdentities/automation': {}
    }
  }
  properties:{
    azCliVersion: '2.30.0'
    primaryScriptUri: 'https://raw.githubusercontent.com/DevOpsIntership/DeploymentScript/main/container.sh'
    timeout: 'PT10M'
    cleanupPreference: 'Always'
    retentionInterval: 'P1D'
  }
}
