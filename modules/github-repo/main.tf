# ----- GitHubリポジトリ作成 ----- #
#
resource "github_repository" "this" {
  
  for_each = { for i in var.REPOSITORY : i.REPOSITORY_NAME => i }
  
  name     = each.value.REPOSITORY_NAME

  allow_auto_merge       = true
  allow_merge_commit     = false
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true

  auto_init = true
}

# ----- GitHubブランチ戦略設定 ----- #
#
resource "github_branch_protection_v3" "this" {
  
  for_each   = { for i in var.REPOSITORY : i.REPOSITORY_NAME => i }
  
  repository = each.value.REPOSITORY_NAME
  branch     = "main"

  required_pull_request_reviews {
    dismiss_stale_reviews          = true
    require_code_owner_reviews     = true
    required_approving_review_count = 2
  }

  depends_on = [
    github_repository.this
  ]
}