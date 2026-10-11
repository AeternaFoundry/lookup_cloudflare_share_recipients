variable "share_recipients_lookup" {
  description = <<EOT
Map of share_recipients_lookup, attributes below
Required:
    - account_id
    - share_id
Optional:
    - include_resources
    - max_items
EOT

  type = map(object({
    account_id        = string
    share_id          = string
    include_resources = optional(bool)
    max_items         = optional(number)
  }))
}

