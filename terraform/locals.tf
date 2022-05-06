locals {
  region = var.aws_region
  ecr_defaults = {
    repository_name    = "ea-design-ca"
    fe_repository_name = "ea-design-fe"
    be_repository_name = "ea-design-be"
  }
  ecr = merge(local.ecr_defaults, var.ecr_values)

  ecs_defaults = {
    cluster_name = "EADesign-Cluster"
    service_name = "EADesign-service"
  }
  ecs = merge(local.ecs_defaults, var.ecs_values)

  lb_defaults = {
    name     = "eadesign-alb"
    internal = false
    target_group = {
      name     = "ead-alb-tg"
      port     = 80
      protocol = "HTTP"
    }
  }
  lb = merge(local.lb_defaults, var.lb_values)

  vpc_defaults = {
    id = ""
  }
  vpc             = merge(local.vpc_defaults, var.vpc)
  use_default_vpc = local.vpc.id == ""

  container_defaults = {
    name    = "application"
    image   = "particule/helloworld"
    ports   = [80]
    fe-name = "eadesign-fe"
  }
  container = merge(local.container_defaults, var.container)
}