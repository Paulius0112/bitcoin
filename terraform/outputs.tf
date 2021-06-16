resource "local_file" "ansible_inventory" {
  content = templatefile("ansible_inventory.tmpl", {
    monitoring_ip  = linode_instance.monitoring_node.ip_address,
    ethereum_node_ip = linode_instance.ethereum_node.ip_address
  })
  filename = "../ansible/inventory.yml"
}