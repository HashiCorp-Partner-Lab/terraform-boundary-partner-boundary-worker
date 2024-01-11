resource "boundary_host_catalog_static" "example_host_catalog" {
  scope_id    = var.project_id
  description = "Example Host Catalogue"
}

resource "boundary_host_set_static" "example_static_host_set" {
  host_catalog_id = boundary_host_catalog_static.example_host_catalog.id
  name            = "example-static-host-set"
  description     = "Example Static Host Set for AWS Linux Machine"
  host_ids        = [boundary_host_static.example_static_host.id]
}

resource "boundary_host_static" "example_static_host" {
  host_catalog_id = boundary_host_catalog_static.example_host_catalog.id
  address         = aws_instance.boundary_public_target.public_ip
  name            = "example-static-host"
  description     = "Example Static Host for AWS Linux EC2"
  depends_on      = [aws_instance.boundary_public_target]
}

resource "boundary_target" "aws_linux_public" {
  type                     = "tcp"
  name                     = "aws-example-linux-target"
  description              = "AWS Linux Public Target"
  egress_worker_filter     = " \"sm-ingress-upstream-worker1\" in \"/tags/type\" "
  scope_id                 = var.project_id
  session_connection_limit = -1
  default_port             = 22
  host_source_ids = [
    boundary_host_set_static.example_static_host_set.id
  ]
}

resource "boundary_host_catalog_static" "smw_static_host_catalog" {
  scope_id = var.project_id
  description = "Self Managed Worker Host Catalogue"
}

resource "boundary_host_set_static" "smw_static_host_set" {
  host_catalog_id = boundary_host_catalog_static.smw_static_host_catalog.id
  name            = "smw-static-host-set"
  description     = "Self Managed Worker Static Host Set"
  host_ids        = [boundary_host_static.self_managed_worker_host.id]
}

resource "boundary_host_static" "self_managed_worker_host" {
  host_catalog_id = boundary_host_catalog_static.smw_static_host_catalog.id
  address         = aws_instance.boundary_ingress_worker.public_ip
  name            = "Boundary Self Managed Worker"
  description     = "Static Host for Boundary Self Managed Worker"
  depends_on      = [aws_instance.boundary_ingress_worker]
}

resource "boundary_target" "self_managed_worker" {
  type                     = "tcp"
  name                     = "boundary-self-managed-worker"
  description              = "Boundary Self Managed Worker EC2"
  egress_worker_filter     = " \"true\" in \"/tags/boundary.cloud.hashicorp.com:managed\" "
  scope_id                 = var.project_id
  session_connection_limit = -1
  default_port             = 22
  host_source_ids = [
    boundary_host_set_static.smw_static_host_set.id
  ]
}