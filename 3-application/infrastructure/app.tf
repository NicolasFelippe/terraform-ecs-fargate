provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {}
}

data "terraform_remote_state" "platform" {
  backend = "s3"

  config = {
    key    = var.remote_state_key
    bucket = var.remote_state_bucket
    region = var.region
  }
}

data "template_file" "ecs_task_definition_template" {
  template = file("task_definition.json")
  vars = {
    task_definition_name = "${var.ecs_service_name}"
  }
}
