resource "cloudflare_record" "lb_rp" {
  zone_id = var.cloudflare_zone_id
  name    = "rp-${var.label}-${random_string.id.result}"
  value   = "${linode_nodebalancer.awesome_cluster_lb.ipv4}"
  type    = "A"
  ttl     = 3600
}
resource "cloudflare_record" "rp" {
    zone_id = var.cloudflare_zone_id
    name    = "*.${var.label}-${random_string.id.result}"
    value   = "${cloudflare_record.lb_rp.name}.${var.root_domain}"
    type    = "CNAME"
    ttl     = 3600
}