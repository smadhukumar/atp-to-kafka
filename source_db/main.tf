/*
********************
# Copyright (c) 2021 Oracle and/or its affiliates. All rights reserved.
# by - Rene Fontcha - Oracle LiveLabs Platform Lead
# Last Updated - 06/28/2022
********************
*/

terraform {
  #required_version = "~> 0.13.0"
  # required_providers {
  #   # oci = {
  #   #   source  = "hashicorp/oci"
  #   #   version = "= 4.79.0"
  #   # }
  #   random = {
  #     source  = "hashicorp/random"
  #     version = ">= 3.3.0"
  #   }
  # }
}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.region
}
