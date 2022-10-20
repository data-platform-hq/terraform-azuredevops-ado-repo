data "azuredevops_client_config" "current" {}
data "azurerm_client_config" "current" {}

data "azuredevops_project" "this" {
  name = var.project_name
}

resource "azuredevops_git_repository" "this" {
  project_id     = data.azuredevops_project.this.id
  name           = "${var.project}_${var.env}_${var.location}_adf"
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
