output "share_recipients_lookup_account_id" {
  description = "Map of account_id values across all share_recipients_lookup, keyed the same as var.share_recipients_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_share_recipients.share_recipients_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "share_recipients_lookup_include_resources" {
  description = "Map of include_resources values across all share_recipients_lookup, keyed the same as var.share_recipients_lookup except keys with no include_resources are omitted"
  value       = { for k, v in data.cloudflare_share_recipients.share_recipients_lookup : k => v.include_resources if v.include_resources != null }
}
output "share_recipients_lookup_max_items" {
  description = "Map of max_items values across all share_recipients_lookup, keyed the same as var.share_recipients_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_share_recipients.share_recipients_lookup : k => v.max_items if v.max_items != null }
}
output "share_recipients_lookup_result" {
  description = "Map of result values across all share_recipients_lookup, keyed the same as var.share_recipients_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_share_recipients.share_recipients_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "share_recipients_lookup_share_id" {
  description = "Map of share_id values across all share_recipients_lookup, keyed the same as var.share_recipients_lookup except keys with no share_id are omitted"
  value       = { for k, v in data.cloudflare_share_recipients.share_recipients_lookup : k => v.share_id if v.share_id != null && length(v.share_id) > 0 }
}

