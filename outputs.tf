output "scope_id_output" {
  value = var.project_id
}

output "project_id_output_new" {
  value = data.boundary_scope.project.id
}

output "org_id_output" {
  value = data.boundary_scope.org
}

output "example_target_public_ip" {
  value = aws_instance.boundary_ingress_worker.public_ip
}