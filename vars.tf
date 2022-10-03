variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}


################################ VCN

variable "holvcn_display_name" {
  default = "HOLVCN"
}
variable "holvcn_dns_label" {
  default = "holvcn"
}
variable "holvcn_public_subnet_display_name" {
  default = "HOLVCN_Public_Subnet"
}
variable "holvcn_public_security_list_display_name" {
  default = "HOLVCN_Public_SL"
}
variable "holvcn_public_dns_label" {
  default = "holvcnpublc"
}
variable "holvcn_public_route_table_display_name" {
  default = "HOLVCN_Public_RT"
}
variable "holvcn_private_subnet_display_name" {
  default = "HOLVCN_Private_subnet"
}
variable "holvcn_private_security_list_display_name" {
  default = "HOLVCN_Private_SL"
}
variable "holvcn_private_dns_label" {
  default = "holvcnprivate"
}
variable "holvcn_private_route_table_display_name" {
  default = "HOLVCN_Private_RT"
}
variable "holvcn_igw_display_name" {
  default = "HOLVCN_IGW"
}
variable "holvcn_nat_display_name" {
  default = "HOLVCN_IGW"
}
variable "holvcn_cidr_block" {
  default = "10.10.0.0/16"
}
variable "holvcn_public_cidr_block" {
  default = "10.10.0.0/24"
}
variable "holvcn_private_cidr_block" {
  default = "10.10.1.0/24"
}
variable "holvcn_igw_cidr_block" {
  default = "0.0.0.0/0"
}
variable "holvcn_nat_cidr_block" {
  default = "0.0.0.0/0"
}

################################ TARGET ATP
variable "atp_display_name" {
  default = "HOL Source ATP"
}
variable "atp_db_name" {
  default = "hol"
}
variable "atp_db_version" {
  default = "19c"
}
variable "atp_license_model" {
  default = "LICENSE_INCLUDED"
}
## FREE TIER
variable "atp_is_free_tier" {
  default = false
}
variable "atp_ocpu_count" {
  default = 1
}
variable "atp_storage_size" {
  default = 1
}
variable "atp_visibility" {
  default = "Public"
}
variable "atp_wallet_generate_type" {
  default = "SINGLE"
}
variable "atp_workload" {
  default = "OLTP"
}
variable "database_id" {
  default = ""
}

