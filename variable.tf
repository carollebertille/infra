variable "region" {
  type    = string
  default = "us-east-1"
}
variable "cidrblock" {
  type    = string
  default = "192.168.0.0/16"
}

variable "tag" {
  type    = string
  default = "vpcproducts"
}

variable "instance" {
  type    = string
  default = true
}

variable "web1a" {
  type    = string
  default = "192.168.1.0/24"
}

variable "az1a" {
  type    = string
  default = "us-east-1a"
}

variable "web1b" {
  type    = string
  default = "192.168.2.0/24"
}
variable "az1b" {
  type    = string
  default = "us-east-1b"
}

variable "app1a" {
  type    = string
  default = "192.168.3.0/24"
}

variable "app1b" {
  type    = string
  default = "192.168.4.0/24"
}

variable "db1a" {
  type    = string
  default = "192.168.5.0/24"
}

variable "db1b" {
  type    = string
  default = "192.168.6.0/24"
}


