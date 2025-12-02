resource "null_resource" "null" {
}

resource "null_resource" "null-resource-not-matching-conventions" {
}

variable "unused_variable" {
  type    = string
  default = "this variable is not used anywhere"
}
