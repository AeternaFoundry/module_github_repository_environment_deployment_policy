output "repository_environment_deployment_policies_id" {
  description = "Map of id values across all repository_environment_deployment_policies, keyed the same as var.repository_environment_deployment_policies"
  value       = { for k, v in github_repository_environment_deployment_policy.repository_environment_deployment_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_environment_deployment_policies_branch_pattern" {
  description = "Map of branch_pattern values across all repository_environment_deployment_policies, keyed the same as var.repository_environment_deployment_policies"
  value       = { for k, v in github_repository_environment_deployment_policy.repository_environment_deployment_policies : k => v.branch_pattern if v.branch_pattern != null && length(v.branch_pattern) > 0 }
}
output "repository_environment_deployment_policies_environment" {
  description = "Map of environment values across all repository_environment_deployment_policies, keyed the same as var.repository_environment_deployment_policies"
  value       = { for k, v in github_repository_environment_deployment_policy.repository_environment_deployment_policies : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "repository_environment_deployment_policies_policy_id" {
  description = "Map of policy_id values across all repository_environment_deployment_policies, keyed the same as var.repository_environment_deployment_policies"
  value       = { for k, v in github_repository_environment_deployment_policy.repository_environment_deployment_policies : k => v.policy_id if v.policy_id != null }
}
output "repository_environment_deployment_policies_repository" {
  description = "Map of repository values across all repository_environment_deployment_policies, keyed the same as var.repository_environment_deployment_policies"
  value       = { for k, v in github_repository_environment_deployment_policy.repository_environment_deployment_policies : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "repository_environment_deployment_policies_repository_id" {
  description = "Map of repository_id values across all repository_environment_deployment_policies, keyed the same as var.repository_environment_deployment_policies"
  value       = { for k, v in github_repository_environment_deployment_policy.repository_environment_deployment_policies : k => v.repository_id if v.repository_id != null }
}
output "repository_environment_deployment_policies_tag_pattern" {
  description = "Map of tag_pattern values across all repository_environment_deployment_policies, keyed the same as var.repository_environment_deployment_policies"
  value       = { for k, v in github_repository_environment_deployment_policy.repository_environment_deployment_policies : k => v.tag_pattern if v.tag_pattern != null && length(v.tag_pattern) > 0 }
}

