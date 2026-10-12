output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_users.users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_lookup_like" {
  description = "Map of like values across all users_lookup, keyed the same as var.users_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_users.users_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "users_lookup_limit" {
  description = "Map of limit values across all users_lookup, keyed the same as var.users_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_users.users_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "users_lookup_starts_with" {
  description = "Map of starts_with values across all users_lookup, keyed the same as var.users_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_users.users_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}
output "users_lookup_users" {
  description = "Map of users values across all users_lookup, keyed the same as var.users_lookup except keys with no users are omitted"
  value       = { for k, v in data.snowflake_users.users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}
output "users_lookup_with_describe" {
  description = "Map of with_describe values across all users_lookup, keyed the same as var.users_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_users.users_lookup : k => v.with_describe if v.with_describe != null }
}
output "users_lookup_with_parameters" {
  description = "Map of with_parameters values across all users_lookup, keyed the same as var.users_lookup except keys with no with_parameters are omitted"
  value       = { for k, v in data.snowflake_users.users_lookup : k => v.with_parameters if v.with_parameters != null }
}

