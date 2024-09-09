# Missing Variables:  [
#     "github_actions",
#     "github_codeowners_team",
#     "github_org_teams",
#     "github_repo_description",
#     "repo_name",
#     "repo_org",
#     "repo_vars"
# ]
variable "github_actions" {
  type = map(string)
}

variable "github_codeowners_team" {
  type = string
}

variable "github_org_teams" {
  type = list(object({
    id   = string
    slug = string
  }))
}

variable "github_repo_description" {
  type = string
}

variable "repo_name" {
  type = string
}

variable "repo_org" {
  type = string
}

variable "vars" {
  type = list(object({
    name  = string,
    value = string
  }))
  default     = []
  description = "Github Action Vars"
}


variable "secrets" {
  type = list(object({
    name  = string,
    value = string
  }))
  default     = []
  description = "Github Action Secrets"
}
