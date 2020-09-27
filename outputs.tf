output "ssh_private_key" {
  value = tls_private_key.this.private_key_pem
}

output "ssh_ec2_kali_linux_connect" {
  value = "ssh -i kali.pem -o IdentitiesOnly=yes kali@${aws_instance.this.public_ip}"
}