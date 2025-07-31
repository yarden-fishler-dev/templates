# No outputs needed for this minimal example.

output "random_string" {
  description = "The generated random string."
  value       = "${var.prefix}-${random_string.this.result}"
}
