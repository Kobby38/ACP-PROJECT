variable "region-name" {
  description = " AWS"
  default     = "eu-west-2"
  type        = string
}

variable "cidr-for-acp-vpc" {
  description = "the-cidr for-eu-west-2-vpc"
  default     = "10.0.0.0/16"
  type        = string
}

variable "cidr-for-acp-public-sub1" {
  description = "public cidr"
  default     = "10.0.1.0/24"
  type        = string
}

variable "tag1" {
  description = "acp-public-sub1"
  default     = null
  type        = map(any)
}
variable "Availability-Zone1" {
  description = "availability zone"
  default     = "eu-west-2a"
  type        = string
}

variable "cidr-for-acp-public-sub2" {
  description = "public cidr"
  default     = "10.0.2.0/24"
  type        = string
}

variable "tag2" {
  description = "acp-public-sub2"
  default     = null
  type        = map(any)
}

variable "Availability-Zone2" {
  description = "availability zone"
  default     = "eu-west-2b"
  type        = string
}

variable "cidr-for-acp-priv-sub1" {
  description = "private cidr"
  default     = "10.0.3.0/24"
  type        = string
}

variable "tag3" {
  description = "acp-private-sub1"
  default     = null
  type        = map(any)
}

variable "Availability-Zone3" {
  description = "availability zone"
  default     = "eu-west-2a"
  type        = string
}

variable "cidr-for-acp-db-subnet" {
  description = "private cidr"
  default     = "10.0.4.0/24"
  type        = string
}

variable "tag4" {
  description = "acp-private-sub2"
  default     = null
  type        = map(any)
}

variable "Availability-Zone4" {
  description = "availability zone"
  default     = "eu-west-2b"
  type        = string
}

variable "tag5" {
  description = "public route table"
  default     = null
  type        = map(any)
}

variable "tag6" {
  description = "private route table"
  default     = null
  type        = map(any)
}

variable "cidr-for-rds-subnet" {
  description = "private cidr"
  default     = "10.0.5.0/24"
  type        = string
}

variable "internet-gateway-association" {
  description = "association of internet gateway with route"
  default     = "0.0.0.0/0"
  type        = string
}

variable "acp-igw" {
  description = "internet gateway"
  default     = null
  type        = map(any)
}

variable "application-lb" {
  description = "listener"
  default     = null
  type        = map(any)
}

variable "rds_mysql_subnet_group" {
  description = "database subnet"
  default     = null
  type        = string
}

