locals {
  owners = {
    amazon = "801119661308"
    canonical = "099720109477"
    oracle = "131827586825"
  }
}

output "amazon" {
  value = local.owners.amazon
}

output "canonical" {
  value = local.owners.canonical
}

output "oracle" {
  value = local.owners.oracle
}

