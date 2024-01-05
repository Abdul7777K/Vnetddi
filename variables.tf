variable "location" {
  description = "The location/region in which to create the network resources"
  default = "East US"
}

variable "vnet_name" {
  description = "The name of the VNet"
  default = "myVNet"
}

variable "vnet_address_space" {
  description = "The address space for the VNet"
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet within the VNet"
  default = "mySubnet"
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet"
  default = ["10.0.1.0/24"]
}
