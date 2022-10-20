required_version = ">= 1.0.0" # Required
variable "project" {
  type        = string
  description = "Project name"
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists"
}

variable "project_name" {
  type        = string
  description = "Azure DevOps project name"
}

# Optional
variable "default_branch" {
  type        = string
  default     = "refs/heads/main"
  description = "The ref of the default branch. Will be used as the branch name for initialized repositories"
}
