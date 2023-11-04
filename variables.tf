variable "secret_name" {
  type        = string
  description = "name of the secret"
}

variable "secret_value" {
  type    = string
  default = ""
}

variable "recovery_window_in_days" {
  type    = number
  default = 7
}
