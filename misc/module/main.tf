resource "null_resource" "example" {
}

resource "random_string" "this" {
  length  = 8
  special = false
  upper   = false
  keepers = {
    prefix = var.prefix
  }
}
