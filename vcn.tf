resource "oci_core_virtual_network" "LiveLabVCN" {
  cidr_blocks = var.VCN-CIDRs
  dns_label = "LiveLabVCN"
  compartment_id = oci_identity_compartment.LiveLab1Compartment.id
  display_name = "LiveLabVCN"
}

