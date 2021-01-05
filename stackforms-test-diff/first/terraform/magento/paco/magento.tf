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

  bastion_sg_allow   = "<bastion-sg>"
  env                = "paco"
  fault_tolerange    = 15
  magento_ssl_cert   = "<ssl-cert-arn>"
  magento_text_input = "test22new"
  net_ids_ac         = "dw-502"
  net_ids_dd         = "dw-502"
  net_ids_sl         = "dw-502"
  private_subnets_ids = [
    "private-subnets"
  ]
  public_subnets_ids = [
    "<public-subnets>"
  ]
  raw_terraform = {
    myvar = 2
  }

  rds_password = var.rds_password
  vpc_id       = "<vpc-id>"
  vpc_status   = "disabled"
}

