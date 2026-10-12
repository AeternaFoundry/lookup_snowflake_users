variable "users_lookup" {
  description = <<EOT
Map of users_lookup, attributes below
Optional:
    - like
    - starts_with
    - with_describe
    - with_parameters
    - limit (block):
        - from (optional)
        - rows (required)
EOT

  type = map(object({
    like            = optional(string)
    starts_with     = optional(string)
    with_describe   = optional(bool)
    with_parameters = optional(bool)
    limit = optional(object({
      from = optional(string)
      rows = number
    }))
  }))
}

