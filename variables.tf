variable "instance_type" {
  type        = string
  description = "(Optional) The type of instance to start."
  default     = "t2.micro"
}

variable "volume_size" {
  type        = string
  description = "(Optional) The size of the volume in gibibytes (GiB)."
  default     = "50"
}

variable "subnet_id" {
  type        = string
  description = "(Optional) The VPC subnet ID."
  default     = null
}

variable "availability_zone" {
  type        = string
  description = "(Optional) The AZ to start the instance in."
  default     = "us-east-1a"
}