resource "aws_kms_alias" "key" {
  name          = var.alias
  target_key_id = aws_kms_key.secure.key_id
}
