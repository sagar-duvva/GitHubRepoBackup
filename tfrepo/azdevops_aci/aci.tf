resource "azurerm_container_group" "agent" {
  name                = var.aciname
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"

  ip_address_type = "Public"
  dns_name_label  = var.aciname # must be globally unique in the region

  container {
    name   = "azure-devops-agent"
    image  = "mcr.microsoft.com/azure-pipelines/vsts-agent:latest"
    cpu    = 1
    memory = 2

    ports {
      port     = 80
      protocol = "TCP"
    }

    environment_variables = {
      AZP_URL        = var.azure_devops_url
      AZP_TOKEN      = var.agent_pat
      AZP_POOL       = var.agent_pool
      AZP_AGENT_NAME = var.agent_name
    }
  }

  restart_policy = "Always"

  tags = {
    environment = "dev"
  }
}
