variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "remote_state_key" {}
variable "remote_state_bucket" {}


# application variables for task

variable "ecs_service_name" {}
variable "docker_image_url" {}
variable "memory" {}
variable "docker_container_port" {}
variable "desired_task_number" {}
variable "spring_profile" {}
variable "cpu" {
  default = 512
}


