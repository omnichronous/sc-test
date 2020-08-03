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

  env = "dev"

  fault_tolerange = 7

  magento_ssl_cert = "<ssl-cert-arn>"

  net_ids_ac = "dw-502"

  net_ids_dd = "dw-502"

  net_ids_sl = "cb-317"

  private_subnets_ids = [
    "private-subnets",
  ]

  public_subnets_ids = [
    "<public-subnets>",
  ]

  rds_password = "${var.rds_password}"

  vpc_id = "<vpc-id>"

  vpc_status = "disabled"
}
