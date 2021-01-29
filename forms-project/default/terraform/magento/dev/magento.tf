#
# This file has been generated by Cycloid, please DO NOT modify.
# Any manual modifications done to this file, WILL be lost on the
# next project edition via the forms.
#
# Please note that comments in sample files will have been dropped
# due to some limitations upon files' generation.
#
# Any extra variables not found in the original file have been ignored.
#

module "magento" {
  source = "module-magento"

  bastion_sg_allow = "<bastion-sg>"
  env              = "dev"
  magento_ssl_cert = "<ssl-cert-arn>"
  net_ids_ac       = "test"
  net_ids_dd       = "test"
  net_ids_sl       = "test"
  private_subnets_ids = [
    "private-subnets"
  ]
  public_subnets_ids = [
    "<public-subnets>"
  ]
  rds_password = var.rds_password
  vpc_id       = "<vpc-id>"
  vpc_status   = "test"
}

