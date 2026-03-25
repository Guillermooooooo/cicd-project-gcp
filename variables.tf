variable "project_id" {
  type = string
  description = "ID of the project"
}

variable "region" {
  type = string
  description = "Region of the project"
}

variable "credentials_file" {
  type = string
}

variable "vpc_name" {
  type = string
  description = "Name of the VPC"
}

variable "subnet_names" {
  type = list(string)
  description = "List of subnet names"
}

variable "subnet_cidrs" {
  type = list(string)
  description = "CIDR ranges for each subnet"
}