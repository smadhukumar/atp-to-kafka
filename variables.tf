variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "compartment_ocid" {}
variable "region" {}
variable "fingerprint" {}


variable "private_key_path" {
  default = "~/.ssh/oci_api_private.pem"
}

variable "private_key_oci" {
  default = "~/.ssh/oci"
}
variable "public_key_oci" {
  default = "~/.ssh/oci.pub"
}
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
  default = "Oracle-Linux-8.7-2023.04.25-0"
}

variable "service_ports" {
  default = [80,443,22,9092]
}


#atp

variable "atp_password" {
  default = "Or4cl3##2023"
}
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
  default = "lielab"
}

variable "database_defined_tags_value" {
  default = "value"
}

variable "database_display_name" {
  default = "ATP_Source"
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
