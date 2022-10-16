/*
********************
# Copyright (c) 2021 Oracle and/or its affiliates. All rights reserved.
# by - Rene Fontcha - Oracle LiveLabs Platform Lead
# Last Updated - 07/25/2022
********************
*/

/*
********************
Marketplace UI Parameters (Update all default values)
********************
*/

variable "use_marketplace_image" {
  # Set to false when testing a local image
  default = true
}

variable "mp_listing_id" {
  #Provide the Listing OCID
  default = "ocid1.appcataloglisting.oc1..aaaaaaaaejmngzf2hzy5s3bzkyhvjqlfthnebztjgeoeasjlkwygspxqrfsq"
}

variable "mp_listing_resource_version" {
  #Provide the listing version
  default = "2.1"
}

variable "instance_image_id" {
  #Provide the image OCID
  default = "ocid1.image.oc1..aaaaaaaaellmfbzfnxyjrjnrozjctfvbtazxbjo7mlz2mrz2d2oeo4hfl27q"
}

/*
******************************
Desktop URLs Injection (Update all default values)
******************************
*/
variable "novnc_delay_sec" {
  default = "300s"
}

variable "desktop_guide_url" {
  default = "https://oracle-livelabs.github.io/goldengate/ggma-for-bigdata/workshops/desktop"
}

variable "desktop_app1_url" {
  default = "http://localhost:22001/?root=account"
}

variable "desktop_app2_url" {
  default = ""
}

/*
******************************
Basic Configuration Details (Readonly - Do not change)
******************************
*/

variable "compartment_ocid" {}
variable "tenancy_ocid" {}
variable "region" {}
variable "availability_domain_name" {}
variable "ssh_public_key" {
  default = ""
}
variable "generate_ssh_key_pair" {
  default = false
}

variable "inst_use_ssh" {
  default = false
}

variable "shape_use_flex" {
  default = true
}

variable "flex_instance_shape" {
  default = "VM.Standard.E4.Flex"
}

variable "fixed_instance_shape" {
  default = "VM.Standard.E2.2"
}

variable "instance_count" {
  default = 1
}

variable "instance_shape_config_ocpus" {
  default = 2
}

variable "vcn_use_existing" {
  default = false
}
variable "vcn_existing" {
  default = ""
}
variable "subnet_public_existing" {
  default = ""
}

#*************************************
#        Local Variables
#*************************************
locals {
  public_subnet_id = var.vcn_use_existing ? var.subnet_public_existing : oci_core_subnet.holvcn_public_subnet.id
  timestamp        = formatdate("YYYY-MM-DD-hhmmss", timestamp())
  instance_shape   = var.shape_use_flex ? var.flex_instance_shape : var.fixed_instance_shape
  is_flex_shape    = var.shape_use_flex ? [var.instance_shape_config_ocpus] : []
}
