# ----- GitHubのチーム作成 ----- #
#
# @param
#   name:        GitHubのチーム名
#   description: GitHubのチームの説明
#   privacy:     GitHubチームの可視化
#
resource "github_team" "this" {
  name                      = var.TEAM_NAME
  description               = var.TEAM_DESCRIPTION
  privacy                   = var.TEAM_PRIVACY
  create_default_maintainer = true
}

# ----- GitHubのチームにメンバを追加 -----#
#
resource "github_team_membership" "this" {
  
  for_each = { for i in var.TEAM_MEMBERS : i.USERNAME => i }

  team_id = github_team.this.id

  username = each.value.USERNAME
  role     = each.value.ROLE
}

# ----- GitHubのチームにリポジトリを追加 ----- #
#
resource "github_team_repository" "this" {
  
  for_each = { for i in var.TEAM_PERMISSIONS : i.REPOSITORY => i }

  team_id = github_team.this.id

  repository = each.value.REPOSITORY
  permission = each.value.PERMISSION
}