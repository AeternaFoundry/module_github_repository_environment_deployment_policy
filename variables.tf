variable "repository_environment_deployment_policies" {
  description = <<EOT
Map of repository_environment_deployment_policies, attributes below
Required:
    - environment
    - repository
Optional:
    - branch_pattern
    - tag_pattern
EOT

  type = map(object({
    environment    = string
    repository     = string
    branch_pattern = optional(string)
    tag_pattern    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.repository_environment_deployment_policies : (
        v.branch_pattern == null || (length(v.branch_pattern) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.repository_environment_deployment_policies : (
        v.tag_pattern == null || (length(v.tag_pattern) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

