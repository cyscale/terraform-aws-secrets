variable "secret_name" {
  type        = string
  description = "Name of the secret"
}

variable "secret_value" {
  type      = string
  default   = ""
  sensitive = true
}

variable "recovery_window_in_days" {
  type    = number
  default = 7
}
