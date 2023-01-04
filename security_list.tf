resource "oci_core_security_list" "LiveLabSecurityList" {
    compartment_id = oci_identity_compartment.LiveLab1Compartment.id
    display_name = "LiveLabSecurityList"
    vcn_id = oci_core_virtual_network.LiveLabVCN.id
    
    egress_security_rules {
        protocol = "6"
        destination = "0.0.0.0/0"
    }
    
    dynamic "ingress_security_rules" {
    for_each = var.service_ports
    content {
        protocol = "6"
        source = "0.0.0.0/0"
        tcp_options {
            max = ingress_security_rules.value
            min = ingress_security_rules.value
            }
        }
    }

    ingress_security_rules {
        protocol = "6"
        source = var.VCN-CIDR
    }
}
