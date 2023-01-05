#data "template_file" "cloud-config" {
#  template = <<YAML
#cloud-config
#runcmd:
# - echo 'This instance was provisioned by Terraform.' >> /etc/motd
#YAML
#}

resource "oci_core_instance" "LiveLabWebserver1" {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[1], "name")
  compartment_id = oci_identity_compartment.LiveLab1Compartment.id
  display_name = "MadhuLiveLabKafkaServer"
  shape = var.Shapes
  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.iad.aaaaaaaapulaxjedwo2y3koeli6zq6evql6rropyxpni3wu44i2rbffgxgza"
  }
  metadata = {
      ssh_authorized_keys = file(var.public_key_oci)
   #   user_data = "${base64encode(file("./cloudinitrun.sh"))}"
  }
  connection {
    type        = "ssh"
    host        = "${self.public_ip}"
    user        = "opc"
    private_key = "${file(var.private_key_oci)}"
  }
  provisioner "file" {
    source      = "./cloudinitrun.sh"
    destination = "/home/opc/cloudinitrun.sh"
  }


  provisioner "remote-exec" {
    inline = [
      "sudo -u root sh /home/opc/cloudinitrun.sh",
    ]
  }
  create_vnic_details {
     subnet_id = oci_core_subnet.LiveLabWebSubnet.id
     assign_public_ip = true 
  }
  shape_config {
      memory_in_gbs = 7
      ocpus = 1
  }
}

