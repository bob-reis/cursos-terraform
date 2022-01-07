resource "random_integer" "rint" {
  min = 80
  max = 200
}

resource "random_string" "senha" {
  length = 15
  lifecycle {
    #create_before_destroy = true
    #prevent_destroy = true
  }
}


