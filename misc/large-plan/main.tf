terraform {
  required_version = ">= 0.13"
}

# Number of null resources to generate
variable "resource_count" {
  description = "How many null resources to create"
  type        = number
  default     = 1000
}

# Index list [0,1,2..]
locals {
  indices       = [for i in range(var.resource_count) : i]
  # This value changes every plan/apply run and will therefore force the
  # resources to be recreated on every re-deployment.
  redeploy_time = timestamp()
}

resource "null_resource" "bulk" {
  for_each = toset([for i in local.indices : tostring(i)])

  triggers = {
    index         = each.value
    redeploy_time = local.redeploy_time
  }
}

resource "null_resource" "bulk2" {
  for_each = toset([for i in local.indices : tostring(i)])

  triggers = {
    index         = each.value
    redeploy_time = local.redeploy_time
  }
}

resource "null_resource" "bulk3" {
  for_each = toset([for i in local.indices : tostring(i)])

  triggers = {
    index         = each.value
    redeploy_time = local.redeploy_time
  }
}

