# variable "client_id" {}
# variable "client_secret" {}

variable subscription_id {}
variable tenant_id {}
variable client_id {}
variable client_secret {}

variable "agent_count" {
    default = 3
}

variable "ssh_public_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAlX/341selcoIOeGJmFZey5ANbWaZsib6yDVlYHUANBC2rREsp7Mw8+YaeVRG1+wCjIJj54BGBLMxLYYnUFOiFptN4cDV8n9vfudZfh5UngypuxcsAAbIbJTLaoR/zTiPihYwzDihNGEXW2kWTaJTjh5a6WU3gpoISL7qVVOKS6AaK/TDq9wuvyzvVwz75PwR+m6Aw+Fk07SD9nEiGaJQk7EPoKZUoZ6W1uYbPGXFBjy9+SyotZ8Sy6T9IAEE43/AwB8CVYqccdHMn8aeDYUAqzQ8Yyp1HeC08mwew43/P3J3cmAOPtBrZ4gb2CjEzVYlnSebbpiWaLZj3g3l5oWX4Q== rsa-key-20200408"
}

variable "dns_prefix" {
    default = "Menno"
}

variable cluster_name {
    default = "Menno"
}

variable resource_group_name {
    default = "azure-MennoAKS"
}

variable location {
    default = "West Europe"
}

variable log_analytics_workspace_name {
    default = "MennoAKSLogAnalyticsWorkspace"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "West Europe"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}