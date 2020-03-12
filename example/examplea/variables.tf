variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "key" {
  type        = map
  description = "The values for the key"
}

variable "accounts" {
  type = list
}

variable "alias" {
  type        = string
  description = "Alias for the key"
}
