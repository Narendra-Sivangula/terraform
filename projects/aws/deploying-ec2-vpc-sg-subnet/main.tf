terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}


module "greeting_file" {
  source   = "./modules/file-writer"
  filename = "greeting.txt"
  message  = "Hello World! this was created using terraform module."
}