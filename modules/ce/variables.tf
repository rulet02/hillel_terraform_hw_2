variable "project" {
  type        = string
  description = "link project on module root"
}

variable "region" {
  type        = string
  description = "link region on module root"
}

variable "zone" {
  type        = string
  description = "link zone on module root"
}

variable "instance_name" {
  type        = string
  description = "link instance name on module root"

}

variable "instance_type" {
  type        = string
  description = "link instance type on module root"
}

variable "instance_image" {
  type        = string
  description = "link image on module root"
}

variable "subnet_id" {
  type        = string
  description = "link subnet module vpc"
}

variable "internal_name" {
  type        = string
  description = "internal_name"
  default = "internal-1"

}
variable "address_type" {
  type        = string
  description = "address_type"
  default = "INTERNAL"
}

variable "instance_ip" {
  type        = string
  description = "link instance ip on module root"
}

variable "name-disk" {
  type        = string
  description = "name-disk"
  default = "disk-1"
}

variable "disk-size" {
  type        = string
  description = "disk-size"
  default = "15"
}

variable "disk-type" {
  type        = string
  description = "disk-type"
  default = "pd-balanced"
}
