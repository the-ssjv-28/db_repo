resource "azurerm_postgresql_database" "db_repo" {
for_each = var.repo_conf

  name                = each.value.name
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  charset             = each.value.charset
  collation           = each.value.collation
}
