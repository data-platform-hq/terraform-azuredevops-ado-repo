# Azure Log Analytics Workspace Terraform module
Terraform module for creation Microsoft SQL Azure Database Server

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                            | Version  |
| ------------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform)       | >= 1.0.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >= 0.2.1 |

## Providers

| Name                                                                      | Version |
| ------------------------------------------------------------------------- | ------- |
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 0.2.1   |

## Modules

No modules.

## Resources

| Name                                                                                                                                  | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azuredevops_git_repository.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/git_repository) | resource |

## Inputs

| Name                                                                           | Description                                                                                 | Type     | Default         | Required |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------- | -------- | --------------- | :------: |
| <a name="input_project"></a> [project](#input\_project)                        | Project name                                                                                | `string` | n/a             |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                    | Environment name                                                                            | `string` | n/a             |   yes    |
| <a name="input_location"></a> [location](#input\_location)                     | Specifies the supported Azure location where the resource exists                            | `string` | n/a             |   yes    |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name)       | Azure DevOps project name                                                                   | `string` | n/a             |   yes    |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | The ref of the default branch. Will be used as the branch name for initialized repositories | `string` | refs/heads/main |    no    |

## Outputs

| Name                                                                                         | Description |
| -------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_repo"></a> [repo](#output\_repo)                                             | ?????????   |
| <a name="output_vsts_configuration"></a> [vsts\_configuration](#output\_vsts\_configuration) | ?????       |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azuredevops-mssql-server/blob/main/LICENSE)
