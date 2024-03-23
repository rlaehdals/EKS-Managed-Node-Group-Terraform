variable "cidr_block" {
  type = string
}
variable "instance_tenancy" {
  type = string
}
variable "enable_dns_support" {
  type = string
}
variable "enable_dns_hostnames" {
  type = string
}

variable "public_cidr_block_1" {
  type = string
}

variable "public_cidr_block_2" {
  type = string
}

variable "public_cidr_block_3" {
  type = string
}

variable "private_cidr_block_1" {
  type = string
}

variable "private_cidr_block_2" {
  type = string
}

variable "private_cidr_block_3" {
  type = string
}
variable "map_public_ip_on_launch" {
  type = string
}

variable "map_private_ip_on_launch" {
  type = string
}

variable "availability_zone_1" {
  type = string
}

variable "availability_zone_2" {
  type = string
}

variable "availability_zone_3" {
  type = string
}

variable "region" {
  type = string
}

variable "tags" {
  type = map(any)
}