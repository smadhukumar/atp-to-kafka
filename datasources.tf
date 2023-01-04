# Gets a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}

# Gets the Id of a specific OS Images
data "oci_core_images" "OSImageLocal" {
  #Required
  compartment_id = var.compartment_ocid
  display_name   = var.OsImage
}

data "oci_core_vnic_attachments" "LiveLabWebserver1_VNIC1_attach" {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[1], "name")
  compartment_id = oci_identity_compartment.LiveLab1Compartment.id
  instance_id = oci_core_instance.LiveLabWebserver1.id
}

data "oci_core_vnic" "LiveLabWebserver1_VNIC1" {
  vnic_id = data.oci_core_vnic_attachments.LiveLabWebserver1_VNIC1_attach.vnic_attachments.0.vnic_id
}

#atp

data "oci_identity_region_subscriptions" "home_region_subscriptions" {
  tenancy_id = var.tenancy_ocid

  filter {
    name   = "is_home_region"
    values = [true]
  }
}

data "oci_database_autonomous_databases" "LiveLab_ATP_databases" {
  provider       = oci.primaryregion
  compartment_id = oci_identity_compartment.LiveLab1Compartment.id
  display_name   = var.database_display_name
}
