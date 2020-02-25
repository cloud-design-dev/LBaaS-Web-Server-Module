data "ibm_compute_ssh_key" "deploymentKey" {
  label = "ryan_tycho_2019"
}

resource "random_id" "name" {
  byte_length = 4
}

resource "ibm_compute_vm_instance" "node" {
  count                = var.node_count
  hostname             = "web-${random_id.name.hex}-${count.index + 1}"
  domain               = var.domain
  os_reference_code    = var.os_reference_code["u18"]
  datacenter           = var.datacenter
  network_speed        = 1000
  hourly_billing       = true
  private_network_only = false
  local_disk           = true
  user_metadata        = file("${path.module}/install.yml")
  flavor_key_name      = var.flavor
  tags                 = ["ryantiffany", var.datacenter]
  ssh_key_ids          = [data.ibm_compute_ssh_key.deploymentKey.id]
}

