resource "oci_core_subnet" "LiveLabWebSubnet" {
  cidr_block = "10.0.1.0/24"
  display_name = "LiveLabWebSubnet"
  dns_label = "LiveLabN1"
  compartment_id = oci_identity_compartment.LiveLab1Compartment.id
  vcn_id = oci_core_virtual_network.LiveLabVCN.id
  route_table_id = oci_core_route_table.LiveLabRouteTableViaIGW.id
  dhcp_options_id = oci_core_dhcp_options.LiveLabDhcpOptions1.id
  security_list_ids = [oci_core_security_list.LiveLabSecurityList.id]
}


