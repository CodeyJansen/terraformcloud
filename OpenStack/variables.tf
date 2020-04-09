# Terraform voor Openstack
# Door Codey Jansen en Thomas Brinkman

variable user_name {}
variable password {}
variable domain_name {}
variable region {}
variable tenant_name {}
variable auth_url {}

# Image voor deploy
variable "image_id_Cirros" {
  description = "Id van de image"
  default     = "67f70a62-252f-495a-aa5e-e120875f90f5"  
}

variable "image_id_CirrosMAF" {
  description = "Id van de image cirros voor MAF"
  default     = "750b1dc0-5990-4ee5-829a-301230941410"  
}

# Flavor voor deploy
variable "flavor_id_tiny" {
  description = "512GB ram, 5GB Disk"
  default     = "170f2c1c-a8cf-4596-9b97-07b3d21fc1e5"  
}

# Custom flavor voor Menno
variable "flavor_id_5euro" {
  description = "5 euro per uur, 256mb ram, 1gb disk"
  default     = "45d2d243-aa38-4ef9-922b-906bef49f449"
}

# Aantal VM's
variable "NumberOfVMS" {
  description = "Het aantal VM's dat aangaat"
  default     = "2"  
}

variable "VMName" {
  description = "VM naam"
  default     = "MAF_VM"  
}

# 1 security maatregel

variable "SSHAccessIPRange" {
  description = "SSH toegang IP range"
  default     = "192.168.1.1/16"
}