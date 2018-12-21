$branch=$args[0]
$repo = 'https://github.com/Chaitu319/azure-github-ci-cd.git'
$resourceGroup = 'ms-azure-github'

az webapp deployment source delete --name ms-azure-github --resource-group ms-azure-github --slot staging
az webapp deployment source config --name ms-azure-github --repo-url $repo --resource-group $resourceGroup --branch $branch --slot staging

# example 
# .\staging-deploy.ps1 "release/1.0.2"