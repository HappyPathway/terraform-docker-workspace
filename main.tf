module "docker-workspace" {
  source                  = "app.terraform.io/roknsound/repo/github" # Source of the module
  force_name              = true                                     # Force the name of the workspace
  github_is_private       = true                                     # Set the GitHub repository to private
  repo_org                = var.repo_org                             # GitHub organization for the repository
  name                    = var.repo_name                            # Name of the repository
  github_codeowners_team  = var.github_codeowners_team               # GitHub team for code owners
  github_repo_description = var.github_repo_description              # Description of the GitHub repository
  github_org_teams        = var.github_org_teams                     # GitHub organization teams
  enforce_prs             = false                                    # Enforce pull requests
  template_repo           = "dockerhub-workspace"                    # Template repository name
  template_repo_org       = "HappyPathway"                           # Organization of the template repository

  # Combine the GitHub token secret with other secrets
  secrets = concat(
    var.github_token == null ? [] : [
      {
        name  = "GH_TOKEN"       # Name of the GitHub token secret
        value = var.github_token # Value of the GitHub token secret
      }
    ],
    var.secrets # Additional secrets
  )

  # Combine GitHub Actions variables with other variables
  vars = concat([
    for var in var.github_actions : {
      name  = var.key   # Name of the GitHub Actions variable
      value = var.value # Value of the GitHub Actions variable
    }
    ],
    var.vars # Additional variables
  )
}
