module "lbaas" {
    source = "./load-balancer"
    subnet = "${module.servers.lbaas_subnet}"
    datacenter = "${var.datacenter}"
}

module "servers" {
  source     = "./web-servers"
  flavor     = var.flavor
  datacenter = var.datacenter
  node_count = var.node_count
}

output "web_server1_ip" {
  value = module.servers.node_public_ips.0
}

output "instances" {
  value = module.servers.instances
}