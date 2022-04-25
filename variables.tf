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

variable "vpc_name" {
  type        = string
  description = "vpc_name"
  default     = "default"
}

//Cloud storage
variable "bucket_name" {
  type        = string
  description = "bucket_name"
  default     = "hillel-18-borovyk"
}

