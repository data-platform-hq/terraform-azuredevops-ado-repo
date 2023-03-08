# Azure DevOps Repository Terraform module
Terraform module for creation Azure DevOps Repository

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                            | Version   |
| ------------------------------------------------------------------------------- | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform)       | >= 1.0.0  |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >= 0.2.1  |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm)             | >= 3.23.0 |

## Providers

| Name                                                                      | Version |
| ------------------------------------------------------------------------- | ------- |
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 0.2.1   |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)             | 3.23.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                                      | Type     |
| ----------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azuredevops_client_config.current](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/client_config) | data     |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config)         | data     |
| [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project)                | data     |
| [azuredevops_git_repository.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/git_repository)     | resource |

## Inputs

| Name                                                                                   | Description                                                                                 | Type     | Default           | Required |
| -------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | -------- | ----------------- | :------: |
| <a name="input_project"></a> [project](#input\_project)                                | Project name                                                                                | `string` | n/a               |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                            | Environment name                                                                            | `string` | n/a               |   yes    |
| <a name="input_location"></a> [location](#input\_location)                             | Specifies the supported Azure location where the resource exists                            | `string` | n/a               |   yes    |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name)               | Azure DevOps project name                                                                   | `string` | n/a               |   yes    |
| <a name="input_suffix"></a> [suffix](#input\_suffix)                                   | Suffix to add to resource name                                                              | `string` | null              |    no    |
| <a name="input_custom_repo_name"></a> [custom\_repo\_name](#input\_custom\_repo\_name) | Custom Azure DevOps Repo name                                                               | `string` | null              |    no    |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch)         | The ref of the default branch. Will be used as the branch name for initialized repositories | `string` | "refs/heads/main" |    no    |

## Outputs

| Name                                                                                         | Description                                                                                                |
| -------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| <a name="output_repo"></a> [repo](#output\_repo)                                             | Attributes of repository created in Azure DevOps                                                           |
| <a name="output_vsts_configuration"></a> [vsts\_configuration](#output\_vsts\_configuration) | Configuration used in Azure Data Factory or Azure Synapse Analytics for repository created in Azure DevOps |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azuredevops-ado-repo/blob/main/LICENSE)
