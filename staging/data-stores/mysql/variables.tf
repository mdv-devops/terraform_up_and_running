variable "creator" {
  default = "MDV-devops"
}

variable "name" {
  description = "Name of environment"
  default     = "Production"
}

variable "key_name" {
  description = "Private key name to use with instance"
  default     = "Key_Virginia"
}

variable "ingress_ports" {
  description = "Ports for SG"
  default     = ["22", "80", "443"]
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}


variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "cidr block in prod VPC"
  default     = "192.168.0.0/16"
}

variable "public_a" {
  description = "cidr block in public subnet A"
  default     = "192.168.10.0/24"
}

variable "public_b" {
  description = "cidr block in public subnet B"
  default     = "192.168.11.0/24"
}

variable "private_a" {
  description = "cidr block in private subnet A"
  default     = "192.168.20.0/24"
}

variable "private_b" {
  description = "cidr block in private subnet B"
  default     = "192.168.21.0/24"
}
