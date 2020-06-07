variable "enabled" {
  type        = bool
  description = "Set to false to prevent the module from creating any resources"
  default     = true
}

variable "name" {
  type        = string
  description = "The Name of the application or solution  (e.g. `bastion` or `portal`)"
}

variable "zone_id" {
  type        = string
  description = "Route53 DNS Zone ID"
}

variable "alias" {
  type        = bool
  description = "Set to true if this is an alias record"
  default     = false
}

variable "alias_name" {
  type        = string
  description = "The Name of the application or solution  (e.g. `bastion` or `portal`)"
  default     = ""
}

variable "alias_target_zone_id" {
  type        = string
  description = "Route53 DNS Zone ID"
  default     = ""
}

variable "evaluate_target_health" {
  type        = string
  description = "Valid only when alias=true. Set to true if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set. "
  default     = false
}

variable "records" {
  type        = list(string)
  description = "DNS records to create. Required for non-alias records."
  default     = [""]
}

variable "type" {
  type        = string
  default     = "CNAME"
  description = "Type of DNS records to create"
}

variable "ttl" {
  type        = string
  default     = "300"
  description = "The TTL of the record to add to the DNS zone to complete certificate validation"
}
