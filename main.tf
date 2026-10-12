data "snowflake_users" "users_lookup" {
  for_each = var.users_lookup

  like            = each.value.like
  starts_with     = each.value.starts_with
  with_describe   = each.value.with_describe
  with_parameters = each.value.with_parameters

  dynamic "limit" {
    for_each = each.value.limit != null ? [each.value.limit] : []
    content {
      from = limit.value.from
      rows = limit.value.rows
    }
  }
}

