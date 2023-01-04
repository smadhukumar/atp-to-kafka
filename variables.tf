variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}
variable "private_key_oci" {}
variable "public_key_oci" {}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "VCN-CIDRs" {
  type = list(string)
  default = ["10.0.0.0/16"]
}

variable "VCNname" {
  default = "LiveLabVCN"
}

variable "Shapes" {
  description = "The shape of an instance."
  default     = "VM.Standard1.1"
}

variable "OsImage" {
  default = "Oracle-Linux-7.8-2020.05.26-0"
}

variable "service_ports" {
  default = [80,443,22,9092]
}


#atp

variable "atp_password" {}
variable "primaryregion" {
  default = ""
}
variable "standbyregion" {
  default = ""
}

variable "database_cpu_core_count" {
  default = 1
}

variable "database_data_storage_size_in_tbs" {
  default = 1
}

variable "database_db_name" {
  default = "fkatpdb1"
}

variable "database_defined_tags_value" {
  default = "value"
}

variable "database_display_name" {
  default = "LiveLabATP_primary"
}

variable "remote_standby_database_display_name" {
  default = "LiveLabATP_remote_standby"
}

variable "database_license_model" {
  default = "LICENSE_INCLUDED"
}

variable "database_db_version" {
  default = "19c"
}

variable "remote_data_guard_enabled" {
  default = false
}

variable "local_data_guard_enabled" {
  default = false
}
