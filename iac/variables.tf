variable "project_id" {
  description = "GCP Project ID"
  type        = string
  sensitive   = true
}

variable "constraint" {
  description = "GCP Organization Policy constraint (e.g., compute.vmExternalIpAccess)"
  type        = string
  default     = "compute.vmExternalIpAccess"
}

variable "deny_all" {
  description = "Whether to deny all for the constraint (true to enforce/block)"
  type        = bool
  default     = true
}