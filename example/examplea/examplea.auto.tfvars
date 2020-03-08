common_tags = {
"createdby" = "Terraform" }

accounts = ["111111111111", "222222222222", "680235478471"]
kms = {
  description              = "AMI-Sharing"
  deletion_window_in_days  = 30
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  is_enabled               = true
  enable_key_rotation      = true
}
