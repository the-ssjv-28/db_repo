resource "azurerm_postgresql_database" "db" {
for_each = var.repo_conf

  name                = each.value.name
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  charset             = lookup(var.repo_conf[each.key], "charset", var.charset)  
  collation           = each.value.collation
}
