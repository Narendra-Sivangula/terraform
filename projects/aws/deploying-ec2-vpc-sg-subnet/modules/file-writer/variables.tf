variable "filename" {
  description = "Name of the file"
  type        = string
}

variable "message" {
  description = "Content to put inside the file"
  type        = string
  default     = "Hello from the default module setting!"
}