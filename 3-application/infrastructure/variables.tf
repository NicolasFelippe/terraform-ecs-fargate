variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "remote_state_key" {}
variable "remote_state_bucket" {}


# application variables for task

variable "ecs_service_name" {}
