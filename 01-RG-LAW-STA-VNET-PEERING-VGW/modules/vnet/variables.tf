variable "vnet_name"           { type = string }
variable "resource_group_name" { type = string }
variable "location"            { type = string }
variable "address_space"       { type = list(string) }
variable "subnets" {
  description = "Map of subnet name => { address_prefixes = [\"x.x.x.x/x\", ...] }"
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {}
}
variable "dns_servers" {
  description = "List of custom DNS server IP addresses for the virtual network"
  type        = list(string)
  default     = []
}
variable "tags" {
  type    = map(string)
  default = {}
}
