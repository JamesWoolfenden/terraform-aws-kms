module "kms" {
  source      = "../../"
  common_tags = var.common_tags
  key         = var.key
  user_policy = data.aws_iam_policy_document.kms.json
  alias       = var.alias
}
