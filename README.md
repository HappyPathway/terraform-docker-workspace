# terraform-docker-workspace
Terraform Module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_docker-workspace"></a> [docker-workspace](#module\_docker-workspace) | app.terraform.io/roknsound/repo/github | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_actions"></a> [github\_actions](#input\_github\_actions) | Missing Variables:  [ "github\_actions", "github\_codeowners\_team", "github\_org\_teams", "github\_repo\_description", "repo\_name", "repo\_org", "repo\_vars" ] | `map(string)` | n/a | yes |
| <a name="input_github_codeowners_team"></a> [github\_codeowners\_team](#input\_github\_codeowners\_team) | n/a | `string` | n/a | yes |
| <a name="input_github_org_teams"></a> [github\_org\_teams](#input\_github\_org\_teams) | n/a | <pre>list(object({<br>    id   = string<br>    slug = string<br>  }))</pre> | n/a | yes |
| <a name="input_github_repo_description"></a> [github\_repo\_description](#input\_github\_repo\_description) | n/a | `string` | n/a | yes |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | n/a | `string` | `null` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | n/a | `string` | n/a | yes |
| <a name="input_repo_org"></a> [repo\_org](#input\_repo\_org) | n/a | `string` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | Github Action Secrets | <pre>list(object({<br>    name  = string,<br>    value = string<br>  }))</pre> | `[]` | no |
| <a name="input_vars"></a> [vars](#input\_vars) | Github Action Vars | <pre>list(object({<br>    name  = string,<br>    value = string<br>  }))</pre> | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->