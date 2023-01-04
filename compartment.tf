resource "oci_identity_compartment" "LiveLab1Compartment" {
 # provider       = oci.homeregion
  name           = "LiveLabCompartment"
  description    = "LiveLab Compartment"
  compartment_id = var.compartment_ocid

  provisioner "local-exec" {
    command = "sleep 60"
  }
}
