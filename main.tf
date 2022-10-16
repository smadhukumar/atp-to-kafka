// Replication from ATP to Kafka lab materials

module "source_kafka" {
         source              = "./source_db"
         compartment_ocid    =var.compartment_ocid
         tenancy_ocid        =var.tenancy_ocid
         region              =var.region
availability_domain_name     = data.oci_identity_availability_domains.ads.availability_domains[0].name
subnet_id             	= oci_core_subnet.holvcn_public_subnet.id
assign_public_ip      	= var.kafka_assign_public_ip
}

module "atp" {
	source          = "./atp"
	compartment_id  = var.compartment_ocid
	display_name 	= var.atp_display_name
	db_name         = "hol${random_string.deploy_id.result}"
	db_workload  	= var.atp_workload
	is_free_tier	= var.atp_is_free_tier
	db_version 	= var.atp_db_version
	cpu_core_count	= var.atp_ocpu_count
	data_storage_size_in_tbs 	= var.atp_storage_size
	license_model	= var.atp_license_model
	generate_type	= var.atp_wallet_generate_type
}




output "ATP_generated_password" {
  value = module.atp.ATP_generated_password
}

output "remote_desktop" {
  value =  module.source_kafka.remote_desktop
}

