variable "opco" {
  type        = string
  description = "Operating Company code"
}

variable "application" {
  type        = string
  description = "Application code"
}

variable "role" {
  type        = string
  description = "Resource role code"
}

variable "number" {
  type        = string
  description = "Resource instance number"
  default     = "001"
}