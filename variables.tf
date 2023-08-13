variable "tag" {
  type = object({
    creater_name = string
    owner_name    = string
    owner_email   = string
  })
}

variable "location" {
  type        = string
  description = "The Azure location where all resources in this example should be created."
  default     = "Japan East"
}

variable "rg_name" {
  type        = string
  description = "The prefix used for all resources used by this Virtual Hub"
  default     = "rg-common-mfaf-tst"
}

variable "vnet_name" {
  type = string
  description = "Vitual network name"
}

variable "vnet_address_space" {
  type = list(string)
  description = "Vitual network address space"
}

variable "subnets" {
  type = list(object({
    name = string
    cidr = string
  }))
}