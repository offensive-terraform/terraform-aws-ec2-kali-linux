# AWS EC2 Kali Linux

![OffensiveTerraform](https://img.shields.io/badge/hack-success)
![OffensiveTerraform](https://img.shields.io/badge/offensive-terraform-blueviolet)
![OffensiveTerraform](https://img.shields.io/badge/aws-important)

Offensive Terraform module which creates Kali Linux from the AWS marketplace and installs cloud security tools (Pacu, Cloudsplaining, ScoutSuite).

## Included Cloud Security Tools
- [Pacu](https://github.com/RhinoSecurityLabs/pacu)
- [Cloudsplaining](https://github.com/salesforce/cloudsplaining)
- [ScoutSuite](https://github.com/nccgroup/ScoutSuite)

## Included Cloud Tools
- [Docker](https://www.docker.com)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference)

## Requirements
[Subscribe Kali Linux on Marketplace](https://aws.amazon.com/marketplace/server/procurement?productId=8b7fdfe3-8cd5-43cc-8e5e-4e0e7f4139d5)

![Attack Diagram](https://raw.githubusercontent.com/offensive-terraform/terraform-aws-ec2-kali-linux/master/diagram.jpg)

## Usage
```
module "ec2-kali-linux" {
    source  = "offensive-terraform/ec2-kali-linux/aws"
}

output "ssh_ec2_kali_linux_connect" {
  value = module.ec2-kali-linux.ssh_ec2_kali_linux_connect
}

output "ssh_private_key" {
  value = module.ec2-kali-linux.ssh_private_key
}
```

## Author
Module managed by [Itgel (Jack) Ganbold](https://github.com/iganbold)

[1.1]: http://i.imgur.com/tXSoThF.png (twitter icon with padding)
[1]: http://www.twitter.com/itgel_ganbold
Follow me on [![Twitter @itgel_ganbold][1.1]][1]