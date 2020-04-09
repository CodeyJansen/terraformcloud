# Terraform voor Openstack
# Door Codey Jansen en Thomas Brinkman

 
# Provider en project credentials
provider "openstack" {
 user_name = var.user_name
 password = var.password
 auth_url = var.auth_url
 domain_name = var.domain_name
 region = var.region
 tenant_name = var.tenant_name
}

# Webserver template
resource "openstack_compute_instance_v2" "Webserver" {
 count = var.NumberOfVMS
 name = "Web-${count.index}"
 image_id = var.image_id_CirrosMAF
 flavor_id = var.flavor_id_5euro
 security_groups = [openstack_compute_secgroup_v2.SG-Webserver.id]
 # KeypairID voor security
 key_pair = "keypair1"
  network {
    uuid = "f991cf96-4853-440f-ac99-68d0dfd92a7f"
    name = "private"
  }
} 
# Network security groups

 resource "openstack_compute_secgroup_v2" "SG-Webserver" {
  name        = "SG-Webserver"
  description = "a security group"

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
#  Rule 2 - SSH toegang webservers
    rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = var.SSHAccessIPRange
# ICMP toestaan
  }
    rule {
      from_port = -1
      to_port = -1
      ip_protocol = "icmp"
      cidr = "0.0.0.0/0"
  }

}