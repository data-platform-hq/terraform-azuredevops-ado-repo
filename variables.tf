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

variable "suffix" {
  type        = string
  description = "Suffix to add to resource"
  default     = ""
}

variable "custom_repo_name" {
  type        = string
  description = "Custom Azure DevOps Repo name"
  default     = null
}

variable "default_branch" {
  type        = string
  default     = "refs/heads/main"
  description = "The ref of the default branch. Will be used as the branch name for initialized repositories"
}
