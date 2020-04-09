# Terraform voor Azure. 
# Gemaakt door Codey Jansen en Thomas Brinkman

# Variablen voor terraform definities



# Authenticatie Variable defineren. Secret/ID staan in tvars file
variable subscription_id {}
variable tenant_id {}
variable client_id {}
variable client_secret {}

# Aantal agents/host containers
variable "agent_count" {
    default = 3
}

# SSH sleutel (Public)  - 1 Security maatregel
variable "ssh_public_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAlX/341selcoIOeGJmFZey5ANbWaZsib6yDVlYHUANBC2rREsp7Mw8+YaeVRG1+wCjIJj54BGBLMxLYYnUFOiFptN4cDV8n9vfudZfh5UngypuxcsAAbIbJTLaoR/zTiPihYwzDihNGEXW2kWTaJTjh5a6WU3gpoISL7qVVOKS6AaK/TDq9wuvyzvVwz75PwR+m6Aw+Fk07SD9nEiGaJQk7EPoKZUoZ6W1uYbPGXFBjy9+SyotZ8Sy6T9IAEE43/AwB8CVYqccdHMn8aeDYUAqzQ8Yyp1HeC08mwew43/P3J3cmAOPtBrZ4gb2CjEzVYlnSebbpiWaLZj3g3l5oWX4Q== rsa-key-20200408"
}

# DNS name
variable "dns_prefix" {
    default = "Menno"
}

# Cluster Naam
variable cluster_name {
    default = "Menno"
}

# Resource group variable
variable resource_group_name {
    default = "azure-MennoAKS"
}


# Regio variable
variable location {
    default = "West Europe"
}

# Naam defineren Insight
variable log_analytics_workspace_name {
    default = "MennoAKSLogAnalyticsWorkspace"
}

# Regio Defineren
variable log_analytics_workspace_location {
    default = "West Europe"
}

# Standaard sjabloon voor Insight (Analytics)
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}