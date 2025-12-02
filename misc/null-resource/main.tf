resource "null_resource" "null" {
}

resource "null_resource" "null-resource-not-matching-conventions" {
}

Since the variable "unused_variable" is declared but not used, the remediation is to remove it entirely:


  type    = string
  default = "this variable is not used anywhere"
}
