resource "aws_kms_key" "secure" {
  description              = var.key["description"]
  deletion_window_in_days  = var.key["deletion_window_in_days"]
  key_usage                = var.key["key_usage"]
  customer_master_key_spec = var.key["customer_master_key_spec"]
  policy                   = data.aws_iam_policy_document.kms.json
  is_enabled               = var.key["is_enabled"]
  enable_key_rotation      = true
  tags                     = var.common_tags
}
data "aws_caller_identity" "current" {}
