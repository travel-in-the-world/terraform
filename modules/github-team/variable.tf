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
variable "TEAM_NAME" {
  type        = string
  description = "GitHubのチーム名"
}

variable "TEAM_DESCRIPTION" {
  type        = string
  description = "GitHubのチームの説明"
}

variable "TEAM_PRIVACY" {
  type        = string
  description = "GitHubのチームの可視化"
}

variable "TEAM_MEMBERS" {
  type        = list(object({ USERNAME = string, ROLE = string }))
  description = "GitHubのチームメンバ"
}

variable "TEAM_PERMISSIONS" {
  type        = list(object({ REPOSITORY = string, PERMISSION = string }))
  description = "GitHubのチーム権限"
}