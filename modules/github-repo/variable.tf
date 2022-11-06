# ----- GitHub Provider ----- #
#
variable "GITHUB_APP_ID" {
  type        = string
  description = "GitHub AppのID"
}

variable "GITHUB_INSTALLATION_ID" {
  type        = string
  description = "GitHub AppのInstallation ID"
}

variable "PRIVATE_KEY" {
  type        = string
  description = "GitHub Appの秘密鍵"
}

# ----- main ----- #
#
variable "REPOSITORY" {
  type        = list(object({ REPOSITORY_NAME = string }))
  description = "GitHubのリポジトリ"
}