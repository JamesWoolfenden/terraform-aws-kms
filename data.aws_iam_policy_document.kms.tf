data "aws_iam_policy_document" "kms" {
  statement {

    sid = "Allow use of the ami key"
    actions = [
      "kms:Decrypt",
      "kms:ReEncrypt*",
      "kms:CreateGrant",
      "kms:DescribeKey"
    ]

    effect = "Allow"

    principals {
      type = "AWS"
      identifiers = [
        for account in var.accounts :
        replace("arn:aws:iam::acc_id:root", "acc_id", account)
      ]
    }

    resources = [
    "*"]

  }
}
