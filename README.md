# terraform-aws-kms

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-kms/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-kms)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-kms.svg)](https://github.com/JamesWoolfenden/terraform-aws-kms/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-kms.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-kms/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-kms/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-kms&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-kms/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-kms&benchmark=INFRASTRUCTURE+SECURITY)

---

Terraform module - Create and optionally shares kms key to other accounts.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

![alt text](./diagram/kms.png)

## Usage

Include this repository as a module in your existing Terraform code:

```hcl
module "efs" {
  source      = "JamesWoolfenden/kms/aws"
  version     = "v0.0.11"
  common_tags = var.common_tags
  key         = var.key
  user_policy = data.aws_iam_policy_document.kms.json
  alias       = var.alias
}
```

The example in the **examplea** folder shows how to pass your own policy in when creating your key.

If you want to share to other AWS accounts add values to a list called **accounts** to the module reference with the account ids, and set your own values to the map key.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_kms_alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) |
| [aws_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alias | KMS alias | `string` | `"alias/ami-sharing"` | no |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| key | Details of the key | `map` | <pre>{<br>  "customer_master_key_spec": "SYMMETRIC_DEFAULT",<br>  "deletion_window_in_days": 10,<br>  "description": "KMS key 1",<br>  "is_enabled": true,<br>  "key_usage": "ENCRYPT_DECRYPT"<br>}</pre> | no |
| user\_policy | Allow Key policies to be user supplied | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| alias | n/a |
| secure | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-kms/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-kms/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-kms&url=https://github.com/JamesWoolfenden/terraform-aws-kms
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-kms&url=https://github.com/JamesWoolfenden/terraform-aws-kms
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-kms
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-kms
[share_email]: mailto:?subject=terraform-aws-kms&body=https://github.com/JamesWoolfenden/terraform-aws-kms
