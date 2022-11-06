# ----- GitHub Providerの設定 ----- #
#
provider "github" {
  app_auth {
    id              = var.GITHUB_APP_ID
    installation_id = var.GITHUB_INSTALLATION_ID
    pem_file        = var.PRIVATE_KEY
  }
  
  owner = "travel-in-the-world"
}