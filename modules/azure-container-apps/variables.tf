variable "project_name" {
  description = "Short project identifier."
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z][a-zA-Z0-9-]{2,19}$", var.project_name))
    error_message = "Use 3-20 letters, digits, or hyphens, starting with a letter."
  }
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "eastus"
}

variable "azure_deployer_object_id" {
  description = "Object ID of the GitHub Actions service principal."
  type        = string
}

variable "image_name" {
  description = "Container image used by Azure Container Apps."
  type        = string
  default     = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
}

variable "container_cpu" {
  type    = number
  default = 0.25
}

variable "container_memory" {
  type    = string
  default = "0.5Gi"
}
