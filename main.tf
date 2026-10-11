resource "google_memorystore_instance" "memorystore_instances" {
  for_each = var.memorystore_instances

  instance_id                 = each.value.instance_id
  location                    = each.value.location
  shard_count                 = each.value.shard_count
  acl_policy                  = each.value.acl_policy
  authorization_mode          = each.value.authorization_mode
  deletion_policy             = each.value.deletion_policy
  deletion_protection_enabled = each.value.deletion_protection_enabled
  engine_configs              = each.value.engine_configs
  engine_version              = each.value.engine_version
  kms_key                     = each.value.kms_key
  labels                      = each.value.labels
  maintenance_version         = each.value.maintenance_version
  mode                        = each.value.mode
  node_type                   = each.value.node_type
  project                     = each.value.project
  replica_count               = each.value.replica_count
  server_ca_mode              = each.value.server_ca_mode
  server_ca_pool              = each.value.server_ca_pool
  transit_encryption_mode     = each.value.transit_encryption_mode

  dynamic "automated_backup_config" {
    for_each = each.value.automated_backup_config != null ? [each.value.automated_backup_config] : []
    content {
      fixed_frequency_schedule {
        start_time {
          hours = automated_backup_config.value.fixed_frequency_schedule.start_time.hours
        }
      }
      retention = automated_backup_config.value.retention
    }
  }

  dynamic "cross_instance_replication_config" {
    for_each = each.value.cross_instance_replication_config != null ? [each.value.cross_instance_replication_config] : []
    content {
      instance_role = cross_instance_replication_config.value.instance_role
      dynamic "primary_instance" {
        for_each = cross_instance_replication_config.value.primary_instance != null ? [cross_instance_replication_config.value.primary_instance] : []
        content {
          instance = primary_instance.value.instance
        }
      }
      dynamic "secondary_instances" {
        for_each = cross_instance_replication_config.value.secondary_instances != null ? cross_instance_replication_config.value.secondary_instances : []
        content {
          instance = secondary_instances.value.instance
        }
      }
    }
  }

  dynamic "desired_auto_created_endpoints" {
    for_each = each.value.desired_auto_created_endpoints != null ? each.value.desired_auto_created_endpoints : []
    content {
      network    = desired_auto_created_endpoints.value.network
      project_id = desired_auto_created_endpoints.value.project_id
    }
  }

  dynamic "desired_psc_auto_connections" {
    for_each = each.value.desired_psc_auto_connections != null ? each.value.desired_psc_auto_connections : []
    content {
      network    = desired_psc_auto_connections.value.network
      project_id = desired_psc_auto_connections.value.project_id
    }
  }

  dynamic "gcs_source" {
    for_each = each.value.gcs_source != null ? [each.value.gcs_source] : []
    content {
      uris = gcs_source.value.uris
    }
  }

  dynamic "maintenance_policy" {
    for_each = each.value.maintenance_policy != null ? [each.value.maintenance_policy] : []
    content {
      dynamic "weekly_maintenance_window" {
        for_each = maintenance_policy.value.weekly_maintenance_window != null ? maintenance_policy.value.weekly_maintenance_window : []
        content {
          day = weekly_maintenance_window.value.day
          start_time {
            hours   = weekly_maintenance_window.value.start_time.hours
            minutes = weekly_maintenance_window.value.start_time.minutes
            nanos   = weekly_maintenance_window.value.start_time.nanos
            seconds = weekly_maintenance_window.value.start_time.seconds
          }
        }
      }
    }
  }

  dynamic "managed_backup_source" {
    for_each = each.value.managed_backup_source != null ? [each.value.managed_backup_source] : []
    content {
      backup = managed_backup_source.value.backup
    }
  }

  dynamic "persistence_config" {
    for_each = each.value.persistence_config != null ? [each.value.persistence_config] : []
    content {
      dynamic "aof_config" {
        for_each = persistence_config.value.aof_config != null ? [persistence_config.value.aof_config] : []
        content {
          append_fsync = aof_config.value.append_fsync
        }
      }
      mode = persistence_config.value.mode
      dynamic "rdb_config" {
        for_each = persistence_config.value.rdb_config != null ? [persistence_config.value.rdb_config] : []
        content {
          rdb_snapshot_period     = rdb_config.value.rdb_snapshot_period
          rdb_snapshot_start_time = rdb_config.value.rdb_snapshot_start_time
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "zone_distribution_config" {
    for_each = each.value.zone_distribution_config != null ? [each.value.zone_distribution_config] : []
    content {
      mode = zone_distribution_config.value.mode
      zone = zone_distribution_config.value.zone
    }
  }
}

