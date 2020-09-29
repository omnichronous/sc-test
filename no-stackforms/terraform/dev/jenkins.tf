module "jenkins" {
  #####################################
  # Do not modify the following lines #
  source = "./module-jenkins"

  project    = var.project
  env        = var.env
  customer   = var.customer

  #####################################

  #. vpc_id (required):
  #+ Amazon VPC id on which create each components.
  vpc_id = data.terraform_remote_state.infrastructure.outputs.infra_vpc_id

  #. keypair_name (optional): cycloid
  #+ SSH keypair name to use to deploy ec2 instances.
  keypair_name = data.terraform_remote_state.infrastructure.outputs.keypair_name

  #. bastion_sg_allow (optional):
  #+ Amazon source security group ID which will be allowed to connect on Fronts port 22 (ssh).
  bastion_sg_allow = data.terraform_remote_state.infrastructure.outputs.infra_bastion_sg_allow

  #. public_subnets_ids (required, array):
  #+ Amazon subnets IDs on which create each components.
  public_subnets_ids = data.terraform_remote_state.infrastructure.outputs.infra_public_subnets

  #. extra_tags (optional): {}
  #+ Dict of extra tags to add on aws resources. format { "foo" = "bar" }.

  #. jenkins_type (optional): t3.small
  #+ Amazon EC2 instance type for Jenkins server.

  #. jenkins_disk_size (optional): 60
  #+ Disk size for the Jenkins server.
}
