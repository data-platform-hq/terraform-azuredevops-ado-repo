output "repo" {
  value = {
    id             = azuredevops_git_repository.this.id
    name           = azuredevops_git_repository.this.name
    default_branch = azuredevops_git_repository.this.default_branch
    size           = azuredevops_git_repository.this.size
    remote_url     = azuredevops_git_repository.this.remote_url
    ssh_url        = azuredevops_git_repository.this.ssh_url
    url            = azuredevops_git_repository.this.url
    web_url        = azuredevops_git_repository.this.web_url
  }
  description = "Attributes of repository created in Azure DevOps"
}

output "vsts_configuration" {
  value = {
    account_name    = basename(data.azuredevops_client_config.current.organization_url)
    branch_name     = basename(azuredevops_git_repository.this.default_branch)
    project_name    = data.azuredevops_project.this.name
    repository_name = azuredevops_git_repository.this.name
    root_folder     = "/"
    tenant_id       = data.azurerm_client_config.current.tenant_id
  }
  desdescription = "Configuration used in Azure Data Factory or Azure Synapse Analytics for repository created in Azure DevOps"
}
