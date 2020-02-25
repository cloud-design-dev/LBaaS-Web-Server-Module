variable "flavor" {
  type        = string
  description = "The flavor size for the web servers"
  default     = ""
}

variable "datacenter" {
  type        = string
  description = "The DC for the web servers"
  default     = ""
}

variable "node_count" {
  default = ""
}

variable "os_reference_code" {
  type = map(string)

  default = {
    u16     = "UBUNTU_16_64"
    u18     = "UBUNTU_18_64"
    rhel6   = "REDHAT_6_64"
    rhel7   = "REDHAT_7_64"
    cent6   = "CENTOS_6_64"
    cent7   = "CENTOS_7_64"
    deb8    = "DEBIAN_8_64"
    deb9    = "DEBIAN_9_64"
    win2012 = "WIN_2012-STD_64"
    win2016 = "WIN_2016-STD_64"
    win2019 = "WIN_2019-STD_64"
  }
}

variable "domain" {
  type    = string
  default = "cdetesting.com"
}

