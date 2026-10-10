output "codedeploy_deployment_configs_id" {
  description = "Map of id values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codedeploy_deployment_configs_arn" {
  description = "Map of arn values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "codedeploy_deployment_configs_compute_platform" {
  description = "Map of compute_platform values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => v.compute_platform if v.compute_platform != null && length(v.compute_platform) > 0 }
}
output "codedeploy_deployment_configs_deployment_config_id" {
  description = "Map of deployment_config_id values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => v.deployment_config_id if v.deployment_config_id != null && length(v.deployment_config_id) > 0 }
}
output "codedeploy_deployment_configs_deployment_config_name" {
  description = "Map of deployment_config_name values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => v.deployment_config_name if v.deployment_config_name != null && length(v.deployment_config_name) > 0 }
}
output "codedeploy_deployment_configs_minimum_healthy_hosts" {
  description = "Map of minimum_healthy_hosts values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => one(v.minimum_healthy_hosts) if v.minimum_healthy_hosts != null && length(v.minimum_healthy_hosts) > 0 }
}
output "codedeploy_deployment_configs_region" {
  description = "Map of region values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codedeploy_deployment_configs_traffic_routing_config" {
  description = "Map of traffic_routing_config values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => one(v.traffic_routing_config) if v.traffic_routing_config != null && length(v.traffic_routing_config) > 0 }
}
output "codedeploy_deployment_configs_zonal_config" {
  description = "Map of zonal_config values across all codedeploy_deployment_configs, keyed the same as var.codedeploy_deployment_configs"
  value       = { for k, v in aws_codedeploy_deployment_config.codedeploy_deployment_configs : k => one(v.zonal_config) if v.zonal_config != null && length(v.zonal_config) > 0 }
}

