variable "subscription_id" {}
variable "client_secret" { sensitive = "true" }
variable "client_id" {}
variable "tenant_id" {}

variable "rgname" {}
variable "location" {}


variable "aciname" {}
variable "agent_pat" {sensitive = true}
variable "agent_pool" {}
variable "agent_name" {}
variable "azure_devops_url" {}
