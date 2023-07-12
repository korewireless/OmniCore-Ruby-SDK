# OmnicoreClient::MqttConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mqtt_enabled_state** | **String** | MqttEnabledState: If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.  Possible values:   \&quot;MQTT_STATE_UNSPECIFIED\&quot; - No MQTT state specified. If not specified, MQTT will be enabled by default.   \&quot;MQTT_ENABLED\&quot; - Enables a MQTT connection.   \&quot;MQTT_DISABLED\&quot; - Disables a MQTT connection. | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmnicoreClient::MqttConfig.new(
  mqtt_enabled_state: null
)
```

