variable "aws_region" {
  type        = string
  default     = "eu-west-1"
  description = "AWS region"
}

variable "ecr_values" {
  type        = any
  default     = {}
  description = "AWS ECR configuration"
}

variable "ecs_values" {
  type        = any
  default     = {}
  description = "AWS ECS configuration"
}

variable "lb_values" {
  type        = any
  default     = {}
  description = "AWS Load Balancer configuration"
}

variable "vpc" {
  type        = any
  default     = {}
  description = "AWS VPC configuration"
}

variable "container" {
  type        = any
  default     = {}
  description = "Container configuration to deploy"
}

variable "dns_name" {
  type    = any
  default = {}
}

variable "hosted_zone" {
  type    = any
  default = {}
}

variable "domain_suffix" {
  type    = any
  default = {}
}