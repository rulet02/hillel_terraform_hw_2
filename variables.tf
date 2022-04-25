//Project
variable "project" {
  type        = string
  description = "project"
  default     = "hillel-terraform"
}

variable "region" {
  type        = string
  description = "region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "zone"
  default     = "us-central1-a"
}

variable "key" {
  type        = string
  description = "key"
  default     = "../hillel-terraform-1e059f2c981a.json"
}

//Compute Engine
variable "instance_name" {
  type        = string
  description = "instance_name"
  default     = "instance-1"
}
variable "instance_type" {
  type        = string
  description = "instance_type"
  default     = "e2-medium"
}

variable "instance_image" {
  type        = string
  description = "instance_image"
  default     = "debian-cloud/debian-9"
}

variable "instance_ip" {
  default     = "172.17.1.10"
  description = "ip_instance"
}

//VPC
variable "vpc_name" {
  type        = string
  default     = "vpc-1"
  description = "vpc_name"
}

variable "subnet_name" {
  type        = string
  default     = "subnet-1"
  description = "subnet_name"
}

variable "cidr" {
  type        = string
  default     = "172.17.1.0/24"
  description = "cidr"
}
