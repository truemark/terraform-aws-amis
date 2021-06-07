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
  value = data.aws_ami.ol7.arn
}

output "oracle_linux_7_id" {
  value = data.aws_ami.ol7.id
}
