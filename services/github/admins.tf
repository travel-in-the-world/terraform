module "admins" {
  source = "../../modules/github-team"

  GITHUB_APP_ID          = var.GITHUB_APP_ID
  GITHUB_INSTALLATION_ID = var.GITHUB_INSTALLATION_ID
  PRIVATE_KEY            = var.PRIVATE_KEY

  TEAM_NAME        = "admins"
  TEAM_DESCRIPTION = "プロダクトに関するすべての操作権限"
  TEAM_PRIVACY     = "closed"

  TEAM_MEMBERS = [
    {
      USERNAME = "nakadats"
      ROLE     = "maintainer"
    }
  ]

  TEAM_PERMISSIONS = [
    {
      REPOSITORY = "test-repo"
      PERMISSION = "admin"
    }
  ]

}
