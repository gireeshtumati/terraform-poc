variable "aws_region" {
  description = "EC2 Region for the VPC - N. Virginia"
  default     = "us-west-2"
}

variable "subnet_availability_zone" {
  description = "availability zone"
  default     = "us-west-2a"
}

variable "vpc_cidr" {
  description = "vpc cidr"
  default     = "10.2.0.0/16"
}

variable "subnet_cidr" {
  description = "subnet cidr"
  default     = "10.2.40.0/24"
}

variable "vpc_name" {
  description = "VPC Name"
  default     = "gireesh-example"
}

variable "subnet_name" {
  description = "Subnet Name tag"
  default     = "gireesh-example"
}
