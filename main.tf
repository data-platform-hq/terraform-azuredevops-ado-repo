data "azuredevops_client_config" "current" {}
data "azurerm_client_config" "current" {}

locals {
  suffix = length(var.suffix) == 0 ? "" : "-${var.suffix}"
}

data "azuredevops_project" "this" {
  name = var.project_name
}

resource "azuredevops_git_repository" "this" {
  project_id     = data.azuredevops_project.this.id
  name           = var.custom_repo_name == null ? "${var.project}-${var.env}-${var.location}${local.suffix}" : "${var.custom_repo_name}${local.suffix}"
  default_branch = var.default_branch

  initialization {
    init_type = "Clean"
  }

  lifecycle {
    ignore_changes = [
      initialization,
      size
    ]
  }
}
