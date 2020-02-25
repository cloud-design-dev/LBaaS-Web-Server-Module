variable "datacenter" {
  type        = string
  description = "The DC for the lbaas instance"
  default     = ""
}

variable "subnet" {
  type        = string
  description = "The private Subnet ID used for the LbaaS"
  default     = ""
}