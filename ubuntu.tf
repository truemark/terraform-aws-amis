data "aws_ami" "ubuntu_focal" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = [local.owners.canonical]
}

output "ubuntu_focal_arn" {
  description = "The Amazon Machine Image (AMI) of the Ubuntu 20.04 LTS (Focal Fossa) Container Image."
  value = data.aws_ami.ubuntu_focal.arn
}

output "ubuntu_focal_id" {
  description = "The Instance-ID of the Ubuntu 20.04 LTS (Focal Fossa) Container Image."
  value = data.aws_ami.ubuntu_focal.id
}
