provider "openstack" {
 user_name = "admin" # == OS_USERNAME
 password = "P@ssword" # == OS_PASSWORD
 auth_url = "http://192.168.37.100:5000/v3" # == OS_AUTH_URL
 domain_name = "Default" # == OS_USER_DOMAIN_NAME | OS_PROJECT_DOMAIN_NAME
 region = "RegionOne"
 tenant_name = "admin" # == OS_PROJECT_NAME2
}

resource "openstack_compute_instance_v2" "Webserver" {
 count = var.NumberOfVMS
 name = "Web-${count.index}"
 image_id = "750b1dc0-5990-4ee5-829a-301230941410"
 flavor_id = "1"
 security_groups = [openstack_compute_secgroup_v2.SG-Webserver.id]

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
#  1 security maatregel
    rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = var.SSHAccessIPRange
  }
    rule {
      from_port = -1
      to_port = -1
      ip_protocol = "icmp"
      cidr = "0.0.0.0/0"
  }

}