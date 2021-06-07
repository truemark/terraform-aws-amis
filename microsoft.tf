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
  value = data.aws_ami.windows_server_2019.arn
}

output "windows_server_2019_id" {
  value = data.aws_ami.windows_server_2019.id
}
