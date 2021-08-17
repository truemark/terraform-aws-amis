data "aws_ami" "ol7" {
  most_recent = true

  filter {
    name   = "name"
    values = ["OL7*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = [local.owners.oracle] # Oracle
}

output "oracle_linux_7_arn" {
  description = "The Amazon Machine Image (AMI) of the Oracle Linux 7 Container Image."
  value = data.aws_ami.ol7.arn
}

output "oracle_linux_7_id" {
  description = "The Instance-ID of the Oracle Linux 7 Container Image."
  value = data.aws_ami.ol7.id
}
