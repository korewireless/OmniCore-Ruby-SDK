# OmnicoreClient::DeviceRegistry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional][readonly] |
| **parent** | **String** |  | [optional][readonly] |
| **created_on** | **String** |  | [optional][readonly] |
| **updated_on** | **String** |  | [optional][readonly] |
| **credentials** | [**Array&lt;RegistryCredential&gt;**](RegistryCredential.md) |  | [optional] |
| **http_config** | [**HttpConfig**](HttpConfig.md) |  | [optional] |
| **mqtt_config** | [**MqttConfig**](MqttConfig.md) |  | [optional] |
| **log_level** | [**LogLevel**](LogLevel.md) |  | [optional] |
| **is_nats_route** | **Boolean** |  | [optional] |
| **event_notification_configs** | [**Array&lt;EventNotificationConfig&gt;**](EventNotificationConfig.md) |  | [optional] |
| **log_notification_config** | [**NotificationConfig**](NotificationConfig.md) |  | [optional] |
| **state_notification_config** | [**NotificationConfig**](NotificationConfig.md) |  | [optional] |
| **custom_onboard_notification_config** | [**NotificationConfig**](NotificationConfig.md) |  | [optional] |
| **custom_onboard_enabled** | **Boolean** |  | [optional] |
| **number_of_devices** | **Integer** |  | [optional][readonly] |
| **number_of_gateways** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'omnicore_client'

instance = OmnicoreClient::DeviceRegistry.new(
  id: null,
  name: null,
  parent: null,
  created_on: null,
  updated_on: null,
  credentials: null,
  http_config: null,
  mqtt_config: null,
  log_level: null,
  is_nats_route: null,
  event_notification_configs: null,
  log_notification_config: null,
  state_notification_config: null,
  custom_onboard_notification_config: null,
  custom_onboard_enabled: null,
  number_of_devices: null,
  number_of_gateways: null
)
```

