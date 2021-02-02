variable "owner" {
  default = "MDV-devops"
}

variable "tags" {
  default = {
    Owner       = "MDV-devops"
    Environment = "Staging"
  }
}

variable "name" {
  description = "Name of environment"
  default     = "Production"
}

variable "ingress_ports" {
  description = "Ports for SG"
  default     = ["80", "8080"]
}

variable "server_port" {
  description = "port for apache"
  default     = 80
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}


variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}
