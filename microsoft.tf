data "aws_ami" "windows_server_2019" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = [local.owners.amazon] # Amazon
}

output "windows_server_2019_arn" {
  description = "The Amazon Machine Image (AMI) of the Windows Server 2019 Container Image."
  value = data.aws_ami.windows_server_2019.arn
}

output "windows_server_2019_id" {
  description = "The Innstance-ID of the Windows Server 2019 Container Image."
  value = data.aws_ami.windows_server_2019.id
}
