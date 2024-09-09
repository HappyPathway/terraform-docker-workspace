
module "docker-workspace" {
  source                  = "app.terraform.io/roknsound/repo/github"
  force_name              = true
  github_is_private       = true
  repo_org                = var.repo_org
  name                    = var.repo_name
  github_codeowners_team  = var.github_codeowners_team
  github_repo_description = var.github_repo_description
  github_org_teams        = var.github_org_teams
  enforce_prs             = false
  template_repo           = "dockerhub-workspace"
  template_repo_org       = "HappyPathway"
  secrets = var.github_token == null ? {} : {
    GH_TOKEN = var.github_token
  }
  vars = merge(
    var.github_actions,
    var.repo_vars
  )
}
