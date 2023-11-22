=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.6
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

# Common files
require 'omnicore_client/api_client'
require 'omnicore_client/api_error'
require 'omnicore_client/version'
require 'omnicore_client/configuration'

# Models
require 'omnicore_client/models/audit'
require 'omnicore_client/models/audit_result'
require 'omnicore_client/models/bind_request'
require 'omnicore_client/models/bind_request_ids_gateway'
require 'omnicore_client/models/block_communication_body'
require 'omnicore_client/models/config'
require 'omnicore_client/models/configurations'
require 'omnicore_client/models/create_configuration'
require 'omnicore_client/models/create_vault_key_body'
require 'omnicore_client/models/custom_onboard'
require 'omnicore_client/models/device'
require 'omnicore_client/models/device_command'
require 'omnicore_client/models/device_config'
require 'omnicore_client/models/device_configuration'
require 'omnicore_client/models/device_credential'
require 'omnicore_client/models/device_registry'
require 'omnicore_client/models/device_state'
require 'omnicore_client/models/error_frame'
require 'omnicore_client/models/error_status'
require 'omnicore_client/models/event_notification_config'
require 'omnicore_client/models/export_detail'
require 'omnicore_client/models/file_detail'
require 'omnicore_client/models/file_details'
require 'omnicore_client/models/folder'
require 'omnicore_client/models/folder_data'
require 'omnicore_client/models/frame'
require 'omnicore_client/models/gateway_config'
require 'omnicore_client/models/generic_error_response'
require 'omnicore_client/models/get_exports_response'
require 'omnicore_client/models/get_keys_response'
require 'omnicore_client/models/get_replays_response'
require 'omnicore_client/models/http_config'
require 'omnicore_client/models/info'
require 'omnicore_client/models/list_device_config_versions_response'
require 'omnicore_client/models/list_device_registries'
require 'omnicore_client/models/list_device_states_response'
require 'omnicore_client/models/list_devices_response'
require 'omnicore_client/models/list_sinks'
require 'omnicore_client/models/log_level'
require 'omnicore_client/models/metrics'
require 'omnicore_client/models/metrics_data'
require 'omnicore_client/models/metrics_details'
require 'omnicore_client/models/metrics_logs'
require 'omnicore_client/models/metrics_response'
require 'omnicore_client/models/metrics_response_details'
require 'omnicore_client/models/mqtt_config'
require 'omnicore_client/models/notification_config'
require 'omnicore_client/models/operation_metrics'
require 'omnicore_client/models/policy'
require 'omnicore_client/models/public_key_certificate'
require 'omnicore_client/models/public_key_credential'
require 'omnicore_client/models/registry_credential'
require 'omnicore_client/models/replay'
require 'omnicore_client/models/replay_body'
require 'omnicore_client/models/sink'
require 'omnicore_client/models/start_export_body'
require 'omnicore_client/models/vault_configuration'
require 'omnicore_client/models/vault_encryption_key'
require 'omnicore_client/models/vault_status'
require 'omnicore_client/models/vault_status_details'
require 'omnicore_client/models/x509_certificate_details'

# APIs
require 'omnicore_client/api/device_api'
require 'omnicore_client/api/metrics_api'
require 'omnicore_client/api/registry_api'
require 'omnicore_client/api/sink_api'
require 'omnicore_client/api/vault_api'

module OmniCoreClient
  class << self
    # Customize default settings for the SDK using block.
    #   OmniCoreClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
