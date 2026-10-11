resource "github_repository_environment_deployment_policy" "repository_environment_deployment_policies" {
  for_each = var.repository_environment_deployment_policies

  environment    = each.value.environment
  repository     = each.value.repository
  branch_pattern = each.value.branch_pattern
  tag_pattern    = each.value.tag_pattern
}

