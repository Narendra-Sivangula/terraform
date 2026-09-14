resource "local_file" "note" {
  filename = var.filename
  content  = var.message
}