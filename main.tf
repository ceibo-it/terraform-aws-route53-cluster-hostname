resource "aws_route53_record" "default" {
  count   = var.enabled && var.alias ? 0 : 1
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  ttl     = var.ttl
  records = var.records
}


resource "aws_route53_record" "default-alias" {
  count = var.enabled && var.alias ? 1 : 0

  alias {
    name                   = var.alias_name
    zone_id                = var.alias_target_zone_id
    evaluate_target_health = var.evaluate_target_health
  }

  zone_id = var.zone_id
  name    = var.name
  type    = var.type
}
