variable "codedeploy_deployment_configs" {
  description = <<EOT
Map of codedeploy_deployment_configs, attributes below
Required:
    - deployment_config_name
Optional:
    - compute_platform
    - region
    - minimum_healthy_hosts (block):
        - type (optional)
        - value (optional)
    - traffic_routing_config (block):
        - time_based_canary (optional, block):
            - interval (optional)
            - percentage (optional)
        - time_based_linear (optional, block):
            - interval (optional)
            - percentage (optional)
        - type (optional)
    - zonal_config (block):
        - first_zone_monitor_duration_in_seconds (optional)
        - minimum_healthy_hosts_per_zone (optional, block):
            - type (optional)
            - value (optional)
        - monitor_duration_in_seconds (optional)
EOT

  type = map(object({
    deployment_config_name = string
    compute_platform       = optional(string)
    region                 = optional(string)
    minimum_healthy_hosts = optional(object({
      type  = optional(string)
      value = optional(number)
    }))
    traffic_routing_config = optional(object({
      time_based_canary = optional(object({
        interval   = optional(number)
        percentage = optional(number)
      }))
      time_based_linear = optional(object({
        interval   = optional(number)
        percentage = optional(number)
      }))
      type = optional(string)
    }))
    zonal_config = optional(object({
      first_zone_monitor_duration_in_seconds = optional(number)
      minimum_healthy_hosts_per_zone = optional(object({
        type  = optional(string)
        value = optional(number)
      }))
      monitor_duration_in_seconds = optional(number)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

