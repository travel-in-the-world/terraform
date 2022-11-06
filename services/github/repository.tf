module "repository" {
  source = "../../modules/github-repo"

  GITHUB_APP_ID          = var.GITHUB_APP_ID
  GITHUB_INSTALLATION_ID = var.GITHUB_INSTALLATION_ID
  PRIVATE_KEY            = var.PRIVATE_KEY

  REPOSITORY = [
    {
      REPOSITORY_NAME = "test-repo"
    }
  ]
}