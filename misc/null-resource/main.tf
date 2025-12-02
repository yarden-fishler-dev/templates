resource "null_resource" "null" {
}

resource "null_resource" "null_resource_not_matching_conventions" {
}

variable "unused_variable" {
  type    = string
  default = "this variable is not used anywhere"
}
