<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_boundary"></a> [boundary](#requirement\_boundary) | >=1.0.7 |
| <a name="requirement_cloudinit"></a> [cloudinit](#requirement\_cloudinit) | >=2.3.2 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | >=0.56.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | >=3.2.1 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >=4.0.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.31.0 |
| <a name="provider_boundary"></a> [boundary](#provider\_boundary) | 1.1.12 |
| <a name="provider_cloudinit"></a> [cloudinit](#provider\_cloudinit) | 2.3.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.boundary_ingress_worker](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.boundary_public_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.boundary_ingress_worker_ig](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_network_interface.boundary_public_target_ni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface) | resource |
| [aws_route_table.boundary_ingress_worker_public_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.boundary_ingress_worker_public_rt_associate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.boundary_ingress_worker_ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.static_target_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.boundary_ingress_worker_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.boundary_ingress_worker_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [boundary_host_catalog_static.example_host_catalog](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/host_catalog_static) | resource |
| [boundary_host_catalog_static.smw_static_host_catalog](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/host_catalog_static) | resource |
| [boundary_host_set_static.example_static_host_set](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/host_set_static) | resource |
| [boundary_host_set_static.smw_static_host_set](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/host_set_static) | resource |
| [boundary_host_static.example_static_host](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/host_static) | resource |
| [boundary_host_static.self_managed_worker_host](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/host_static) | resource |
| [boundary_target.aws_linux_public](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/target) | resource |
| [boundary_target.self_managed_worker](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/target) | resource |
| [boundary_worker.self_managed_pki_worker](https://registry.terraform.io/providers/hashicorp/boundary/latest/docs/resources/worker) | resource |
| [cloudinit_config.boundary_ingress_worker](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs/data-sources/config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Region within AWS to deploy the resources | `string` | `"eu-west-2b"` | no |
| <a name="input_aws_access"></a> [aws\_access](#input\_aws\_access) | AWS Access Key | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | `"eu-west-2"` | no |
| <a name="input_aws_secret"></a> [aws\_secret](#input\_aws\_secret) | AWS Secret Key | `string` | n/a | yes |
| <a name="input_aws_subnet_cidr"></a> [aws\_subnet\_cidr](#input\_aws\_subnet\_cidr) | The AWS Region CIDR range | `string` | `"172.31.32.0/24"` | no |
| <a name="input_aws_vpc_cidr"></a> [aws\_vpc\_cidr](#input\_aws\_vpc\_cidr) | The AWS Region CIDR range to assign to the VPC | `string` | `"172.31.0.0/16"` | no |
| <a name="input_boundary_addr"></a> [boundary\_addr](#input\_boundary\_addr) | Boundary URL | `string` | n/a | yes |
| <a name="input_boundary_admin_password"></a> [boundary\_admin\_password](#input\_boundary\_admin\_password) | Boundary Admin UI Password | `string` | n/a | yes |
| <a name="input_boundary_admin_username"></a> [boundary\_admin\_username](#input\_boundary\_admin\_username) | Boundary Admin UI Login Name | `string` | `"admin"` | no |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | Boundary Org ID | `string` | `"global"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Boundary Project ID | `string` | `"o_xxxxxxxxxx"` | no |
| <a name="input_ssh_key_name"></a> [ssh\_key\_name](#input\_ssh\_key\_name) | SSH Key name to associate to EC2 Instance. This needs to be created before provisioning | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->