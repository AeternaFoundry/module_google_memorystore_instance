output "memorystore_instances_id" {
  description = "Map of id values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no id are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "memorystore_instances_acl_policy" {
  description = "Map of acl_policy values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no acl_policy are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.acl_policy if v.acl_policy != null && length(v.acl_policy) > 0 }
}
output "memorystore_instances_authorization_mode" {
  description = "Map of authorization_mode values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no authorization_mode are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.authorization_mode if v.authorization_mode != null && length(v.authorization_mode) > 0 }
}
output "memorystore_instances_automated_backup_config" {
  description = "Map of automated_backup_config values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no automated_backup_config are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => one(v.automated_backup_config) if v.automated_backup_config != null && length(v.automated_backup_config) > 0 }
}
output "memorystore_instances_available_maintenance_versions" {
  description = "Map of available_maintenance_versions values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no available_maintenance_versions are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.available_maintenance_versions if v.available_maintenance_versions != null && length(v.available_maintenance_versions) > 0 }
}
output "memorystore_instances_backup_collection" {
  description = "Map of backup_collection values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no backup_collection are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.backup_collection if v.backup_collection != null && length(v.backup_collection) > 0 }
}
output "memorystore_instances_create_time" {
  description = "Map of create_time values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no create_time are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "memorystore_instances_cross_instance_replication_config" {
  description = "Map of cross_instance_replication_config values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no cross_instance_replication_config are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => one(v.cross_instance_replication_config) if v.cross_instance_replication_config != null && length(v.cross_instance_replication_config) > 0 }
}
output "memorystore_instances_deletion_policy" {
  description = "Map of deletion_policy values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "memorystore_instances_deletion_protection_enabled" {
  description = "Map of deletion_protection_enabled values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no deletion_protection_enabled are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.deletion_protection_enabled if v.deletion_protection_enabled != null }
}
output "memorystore_instances_desired_auto_created_endpoints" {
  description = "Map of desired_auto_created_endpoints values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no desired_auto_created_endpoints are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.desired_auto_created_endpoints if v.desired_auto_created_endpoints != null && length(v.desired_auto_created_endpoints) > 0 }
}
output "memorystore_instances_desired_psc_auto_connections" {
  description = "Map of desired_psc_auto_connections values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no desired_psc_auto_connections are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.desired_psc_auto_connections if v.desired_psc_auto_connections != null && length(v.desired_psc_auto_connections) > 0 }
}
output "memorystore_instances_discovery_endpoints" {
  description = "Map of discovery_endpoints values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no discovery_endpoints are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.discovery_endpoints if v.discovery_endpoints != null && length(v.discovery_endpoints) > 0 }
}
output "memorystore_instances_effective_labels" {
  description = "Map of effective_labels values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no effective_labels are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "memorystore_instances_effective_maintenance_version" {
  description = "Map of effective_maintenance_version values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no effective_maintenance_version are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.effective_maintenance_version if v.effective_maintenance_version != null && length(v.effective_maintenance_version) > 0 }
}
output "memorystore_instances_endpoints" {
  description = "Map of endpoints values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no endpoints are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "memorystore_instances_engine_configs" {
  description = "Map of engine_configs values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no engine_configs are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.engine_configs if v.engine_configs != null && length(v.engine_configs) > 0 }
}
output "memorystore_instances_engine_version" {
  description = "Map of engine_version values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no engine_version are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "memorystore_instances_gcs_source" {
  description = "Map of gcs_source values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no gcs_source are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => one(v.gcs_source) if v.gcs_source != null && length(v.gcs_source) > 0 }
}
output "memorystore_instances_instance_id" {
  description = "Map of instance_id values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no instance_id are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "memorystore_instances_is_acl_policy_in_sync" {
  description = "Map of is_acl_policy_in_sync values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no is_acl_policy_in_sync are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.is_acl_policy_in_sync if v.is_acl_policy_in_sync != null }
}
output "memorystore_instances_kms_key" {
  description = "Map of kms_key values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no kms_key are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.kms_key if v.kms_key != null && length(v.kms_key) > 0 }
}
output "memorystore_instances_labels" {
  description = "Map of labels values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no labels are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "memorystore_instances_location" {
  description = "Map of location values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no location are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.location if v.location != null && length(v.location) > 0 }
}
output "memorystore_instances_maintenance_policy" {
  description = "Map of maintenance_policy values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no maintenance_policy are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => one(v.maintenance_policy) if v.maintenance_policy != null && length(v.maintenance_policy) > 0 }
}
output "memorystore_instances_maintenance_schedule" {
  description = "Map of maintenance_schedule values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no maintenance_schedule are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.maintenance_schedule if v.maintenance_schedule != null && length(v.maintenance_schedule) > 0 }
}
output "memorystore_instances_maintenance_version" {
  description = "Map of maintenance_version values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no maintenance_version are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.maintenance_version if v.maintenance_version != null && length(v.maintenance_version) > 0 }
}
output "memorystore_instances_managed_backup_source" {
  description = "Map of managed_backup_source values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no managed_backup_source are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => one(v.managed_backup_source) if v.managed_backup_source != null && length(v.managed_backup_source) > 0 }
}
output "memorystore_instances_managed_server_ca" {
  description = "Map of managed_server_ca values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no managed_server_ca are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.managed_server_ca if v.managed_server_ca != null && length(v.managed_server_ca) > 0 }
}
output "memorystore_instances_mode" {
  description = "Map of mode values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no mode are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "memorystore_instances_name" {
  description = "Map of name values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no name are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "memorystore_instances_node_config" {
  description = "Map of node_config values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no node_config are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.node_config if v.node_config != null && length(v.node_config) > 0 }
}
output "memorystore_instances_node_type" {
  description = "Map of node_type values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no node_type are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.node_type if v.node_type != null && length(v.node_type) > 0 }
}
output "memorystore_instances_persistence_config" {
  description = "Map of persistence_config values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no persistence_config are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => one(v.persistence_config) if v.persistence_config != null && length(v.persistence_config) > 0 }
}
output "memorystore_instances_project" {
  description = "Map of project values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no project are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.project if v.project != null && length(v.project) > 0 }
}
output "memorystore_instances_psc_attachment_details" {
  description = "Map of psc_attachment_details values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no psc_attachment_details are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.psc_attachment_details if v.psc_attachment_details != null && length(v.psc_attachment_details) > 0 }
}
output "memorystore_instances_psc_auto_connections" {
  description = "Map of psc_auto_connections values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no psc_auto_connections are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.psc_auto_connections if v.psc_auto_connections != null && length(v.psc_auto_connections) > 0 }
}
output "memorystore_instances_replica_count" {
  description = "Map of replica_count values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no replica_count are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.replica_count if v.replica_count != null }
}
output "memorystore_instances_server_ca_mode" {
  description = "Map of server_ca_mode values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no server_ca_mode are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.server_ca_mode if v.server_ca_mode != null && length(v.server_ca_mode) > 0 }
}
output "memorystore_instances_server_ca_pool" {
  description = "Map of server_ca_pool values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no server_ca_pool are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.server_ca_pool if v.server_ca_pool != null && length(v.server_ca_pool) > 0 }
}
output "memorystore_instances_shard_count" {
  description = "Map of shard_count values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no shard_count are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.shard_count if v.shard_count != null }
}
output "memorystore_instances_state" {
  description = "Map of state values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no state are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "memorystore_instances_state_info" {
  description = "Map of state_info values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no state_info are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.state_info if v.state_info != null && length(v.state_info) > 0 }
}
output "memorystore_instances_terraform_labels" {
  description = "Map of terraform_labels values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no terraform_labels are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "memorystore_instances_transit_encryption_mode" {
  description = "Map of transit_encryption_mode values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no transit_encryption_mode are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.transit_encryption_mode if v.transit_encryption_mode != null && length(v.transit_encryption_mode) > 0 }
}
output "memorystore_instances_uid" {
  description = "Map of uid values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no uid are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "memorystore_instances_update_time" {
  description = "Map of update_time values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no update_time are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "memorystore_instances_zone_distribution_config" {
  description = "Map of zone_distribution_config values across all memorystore_instances, keyed the same as var.memorystore_instances except keys with no zone_distribution_config are omitted"
  value       = { for k, v in google_memorystore_instance.memorystore_instances : k => one(v.zone_distribution_config) if v.zone_distribution_config != null && length(v.zone_distribution_config) > 0 }
}

