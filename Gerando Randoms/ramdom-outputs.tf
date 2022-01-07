output "count" {
  value = random_integer.rint.result
}

output "senha" {
  value = random_string.senha.result
}