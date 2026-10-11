data "cloudflare_share_recipients" "share_recipients_lookup" {
  for_each = var.share_recipients_lookup

  account_id        = each.value.account_id
  share_id          = each.value.share_id
  include_resources = each.value.include_resources
  max_items         = each.value.max_items
}

