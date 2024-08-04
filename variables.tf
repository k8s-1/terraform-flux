variable "github_token" {
  description = "GitHub token"
  sensitive   = true
  type        = string
  default     = ""
}

variable "github_owner" {
  description = "GitHub organization"
  type        = string
  default     = ""
}

variable "github_repo" {
  description = "GitHub repository"
  type        = string
  default     = ""
}
