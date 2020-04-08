# Naam van de Klant
variable "Klantnaam" {
  default      = "piet"
}

#Credentials van de klant


# Authenticatie URL
variable "auth_url" {
  description = "Het IP adres van Openstack"
  default     = "http://192.168.37.100:5000/v3"
}

# Image voor deploy
variable "image_id_Cirros" {
  description = "Id van de image voor dit project Cirros vanwege laptop limitatie"
  default     = "67f70a62-252f-495a-aa5e-e120875f90f5"  
}
# Flavor voor deploy
variable "flavor_id_tiny" {
  description = "512GB ram, 5GB Disk"
  default     = "170f2c1c-a8cf-4596-9b97-07b3d21fc1e5"  
}

# Aantal VM's
variable "NumberOfVMS" {
  description = "Heet aantal VM's dat aangaat"
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

# Naam van de Klant
variable "Klantnaam" {
  default     = "KlantA" 

}