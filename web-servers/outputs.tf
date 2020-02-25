output "node_id" {
  value = "${ibm_compute_vm_instance.node.*.id}"
}

output "node_public_ips" {
  value = "${ibm_compute_vm_instance.node.*.ipv4_address}"
}

output "node_private_ips" {
  value = "${ibm_compute_vm_instance.node.*.ipv4_address_private}"
}

output "node_private_subnet_id" {
  value = "${ibm_compute_vm_instance.node.*.private_subnet_id}"
}

output "node_public_subnet_id" {
  value = "${ibm_compute_vm_instance.node.*.public_subnet_id}"
}


output "instances" {
   description = "Created vsis"
   value = "${jsonencode(ibm_compute_vm_instance.node.*.id)}"
}

output "lbaas_subnet" {
  value = "${ibm_compute_vm_instance.node.0.private_subnet_id}"
}