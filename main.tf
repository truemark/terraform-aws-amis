locals {
  owners = {
    amazon =    "801119661308"
    canonical = "099720109477"
    oracle =    "131827586825"
  }
}

output "amazon" {
  description = "Public AMIs owned by Amazon."
  value = local.owners.amazon
}

output "canonical" {
  description = "Public AMIs owned by Canonical."
  value = local.owners.canonical
}

output "oracle" {
  description = "Public AMIs owned by Oracle."
  value = local.owners.oracle
}

