variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "key" {
  description = "Details of the key"
  default = {
    description              = "KMS key 1"
    deletion_window_in_days  = 10
    key_usage                = "ENCRYPT_DECRYPT"
    customer_master_key_spec = "SYMMETRIC_DEFAULT"
    is_enabled               = true
  }
}

variable "alias" {
  type        = string
  description = "KMS alias"
  default     = "alias/ami-sharing"
}

variable "user_policy" {
  type        = string
  description = "Allow Key policies to be user supplied"
  default     = ""
}
