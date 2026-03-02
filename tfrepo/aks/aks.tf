resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aksname
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.aksname}-dns"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.aks_vm_size

    upgrade_settings {
      drain_timeout_in_minutes      = 0
      max_surge                     = "10%"
      node_soak_duration_in_minutes = 0
    }
  }


  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}
