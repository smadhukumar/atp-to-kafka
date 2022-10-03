/*
********************
# Copyright (c) 2021 Oracle and/or its affiliates. All rights reserved.
# by - Rene Fontcha - Oracle LiveLabs Platform Lead
# Last Updated - 06/28/2022
********************
*/
output "workshop_desc" {
  value = format("Multi Labs Workshops Setup for Oracle GoldenGate Microservices for Big Data on LiveLabs. Count of total instances provisioned: %s virtual machines of shape %s ",
    var.instance_count,
    local.instance_shape
  )
}

output "instances" {
  value = formatlist("%s - %s",
    oci_core_instance.llw-hol.*.display_name,
    oci_core_instance.llw-hol.*.public_ip
  )
}

output "remote_desktop" {
  value = formatlist("http://%s%s%s%s",
    oci_core_instance.llw-hol.*.public_ip,
    "/livelabs/vnc.html?password=",
    random_string.vncpwd.*.result,
    "&resize=scale&quality=9&autoconnect=true&reconnect=true"
  )
}

output "generated_instance_ssh_private_key" {
  value = var.generate_ssh_key_pair ? tls_private_key.ssh_keypair[0].private_key_pem : null
}
