###Kafka Server details
output "LiveLab_Kafka_BootStrap_Server_PublicIP" {
   value = [data.oci_core_vnic.LiveLabWebserver1_VNIC1.public_ip_address]
}

output "Kafka_Server_Remote_SSH_Connection" {
value ="ssh -i ~/.ssh/oci opc@${data.oci_core_vnic.LiveLabWebserver1_VNIC1.public_ip_address}"
}
#atp
output "LiveLab_ATP_database_admin_password" {
   value = var.atp_password
}

output "ATP_Connection_URLS" {
  value    =  oci_database_autonomous_database.LiveLab_ATP_primary_database.connection_urls

