output "apigateway_deployments_id" {
  description = "Map of id values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no id are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigateway_deployments_compartment_id" {
  description = "Map of compartment_id values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "apigateway_deployments_defined_tags" {
  description = "Map of defined_tags values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no defined_tags are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "apigateway_deployments_display_name" {
  description = "Map of display_name values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no display_name are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigateway_deployments_endpoint" {
  description = "Map of endpoint values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no endpoint are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "apigateway_deployments_freeform_tags" {
  description = "Map of freeform_tags values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "apigateway_deployments_gateway_id" {
  description = "Map of gateway_id values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no gateway_id are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.gateway_id if v.gateway_id != null && length(v.gateway_id) > 0 }
}
output "apigateway_deployments_is_lock_override" {
  description = "Map of is_lock_override values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.is_lock_override if v.is_lock_override != null }
}
output "apigateway_deployments_lifecycle_details" {
  description = "Map of lifecycle_details values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "apigateway_deployments_locks" {
  description = "Map of locks values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no locks are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "apigateway_deployments_path_prefix" {
  description = "Map of path_prefix values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no path_prefix are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.path_prefix if v.path_prefix != null && length(v.path_prefix) > 0 }
}
output "apigateway_deployments_specification" {
  description = "Map of specification values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no specification are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => one(v.specification) if v.specification != null && length(v.specification) > 0 }
}
output "apigateway_deployments_state" {
  description = "Map of state values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no state are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "apigateway_deployments_system_tags" {
  description = "Map of system_tags values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no system_tags are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "apigateway_deployments_time_created" {
  description = "Map of time_created values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no time_created are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "apigateway_deployments_time_updated" {
  description = "Map of time_updated values across all apigateway_deployments, keyed the same as var.apigateway_deployments except keys with no time_updated are omitted"
  value       = { for k, v in oci_apigateway_deployment.apigateway_deployments : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

