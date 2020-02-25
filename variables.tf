variable "datacenter" {
  type        = string
  description = "The DC where the LbaaS and Web-Servers will be deployed."
  default     = "wdc07"
}

variable "flavor" {
  type        = string
  description = "The flavor size for the web servers"
  default     = "BL2_8X16X100"
}

variable "node_count" {
  description = "The number of web-servers to spin up"
  default     = 3
}

