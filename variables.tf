variable "vpc_cidr" {
  description = ""
  type = string
}

variable "public_sub_cidr" {
  description = ""
  type = string
}

variable "private_sub_cidr" {
  description = ""
  type = string
}

variable "vpc_tags" {
  description = ""
  type = map(string)
}