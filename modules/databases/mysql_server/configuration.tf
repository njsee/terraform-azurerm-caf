
#
# Configuration
#

resource "azurerm_mysql_configuration" "mysql_configuration" {
  
  for_each = var.settings.mysql_configuration

  name                = each.value.name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.mysql.name
  value               = var.value
}