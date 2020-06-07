output "hostname" {
  value       = join("", compact(concat(aws_route53_record.default.*.fqdn, aws_route53_record.default-alias.*.fqdn)))
  description = "DNS hostname"
}
