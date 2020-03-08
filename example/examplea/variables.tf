variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "key" {
  default = {
    description              = "AMI-Sharing"
    deletion_window_in_days  = 30
    key_usage                = "ENCRYPT_DECRYPT"
    customer_master_key_spec = "SYMMETRIC_DEFAULT"
    is_enabled               = true
    enable_key_rotation      = false
  }
}

variable "accounts" {
  type = list
}
