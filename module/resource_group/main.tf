
resource "azurerm_resource_group" "rg-arub" {
  for_each = var.rg
  name     = each.value.name
  location = each.value.location
  managed_by = each.value.managed_by
  tags = each.value.tags
}


# resource "azurerm_storage_account" "example" {
#   name                     = "storageaccountarub"
#   resource_group_name      = "example"
#   location                 = "centralindia"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }