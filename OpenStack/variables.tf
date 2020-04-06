variable "auth_url" {
  description = "The IP adress or DNS name to the openstack console"
  default     = "192.168.0.59"
}
variable "image_id" {
  description = ""
  default     = "67f70a62-252f-495a-aa5e-e120875f90f5"  
}
variable "flavor_id" {
  description = ""
  default     = "170f2c1c-a8cf-4596-9b97-07b3d21fc1e5"  
}
variable "NumberOfVMS" {
  description = ""
  default     = "5"  
}

variable "VMName" {
  description = "VM naam"
  default     = "Klant1"  
}
# 1 security maatregel
variable "SSHAccessIPRange" {
  description = "SSH toegang IP range"
  default     = "192.168.1.1/16"  
}
variable "Klantnaam" {
  default     = "KlantA" 

}