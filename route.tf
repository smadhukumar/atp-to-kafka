resource "oci_core_route_table" "LiveLabRouteTableViaIGW" {
    compartment_id = oci_identity_compartment.LiveLab1Compartment.id
    vcn_id = oci_core_virtual_network.LiveLabVCN.id
    display_name = "LiveLabRouteTableViaIGW"
    route_rules {
        destination = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
        network_entity_id = oci_core_internet_gateway.LiveLabInternetGateway.id
    }
}
