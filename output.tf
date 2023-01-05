output "LiveLabWebserver1PublicIP" {
   value = [data.oci_core_vnic.LiveLabWebserver1_VNIC1.public_ip_address]
}

#atp
output "LiveLab_ATP_database_admin_password" {
   value = var.atp_password
}

output "LiveLab_ATP_databases" {
  value    = data.oci_database_autonomous_databases.LiveLab_ATP_databases.autonomous_databases
}

output "parallel_connection_string" {
  value    = [lookup(oci_database_autonomous_database.LiveLab_ATP_primary_database.connection_strings.0.all_connection_strings, "PARALLEL", "Unavailable")]
}

output "remote_desktop" {
  value = formatlist("http://%s%s%s%s",
    [data.oci_core_vnic.LiveLabWebserver1_VNIC1.public_ip_address],
    "/livelabs/vnc.html?password=",
    random_string.vncpwd.*.result,
    "&resize=scale&quality=9&autoconnect=true&reconnect=true"
  )
}