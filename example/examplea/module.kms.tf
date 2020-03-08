module "kms" {
  source      = "../../"
  common_tags = var.common_tags
  key         = var.key
  accounts    = var.accounts
}
