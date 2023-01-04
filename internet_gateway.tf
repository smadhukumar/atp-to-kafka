resource "oci_core_internet_gateway" "LiveLabInternetGateway" {
    compartment_id = oci_identity_compartment.LiveLab1Compartment.id
    display_name = "LiveLabInternetGateway"
    vcn_id = oci_core_virtual_network.LiveLabVCN.id
}
