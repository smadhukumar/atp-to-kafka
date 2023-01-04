resource "oci_core_dhcp_options" "LiveLabDhcpOptions1" {
  compartment_id = oci_identity_compartment.LiveLab1Compartment.id
  vcn_id = oci_core_virtual_network.LiveLabVCN.id
  display_name = "LiveLabDHCPOptions1"

  // required
  options {
    type = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }

  // optional
  options {
    type = "SearchDomain"
    search_domain_names = [ "livelab.com" ]
  }
}
