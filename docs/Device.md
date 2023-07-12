# OmniCoreClient::Device

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional][readonly] |
| **num_id** | **String** |  | [optional][readonly] |
| **parent** | **String** |  | [optional][readonly] |
| **registry** | **String** |  | [optional][readonly] |
| **blocked** | **Boolean** |  | [optional] |
| **capresent** | **Boolean** |  | [optional][readonly] |
| **subscription** | **String** |  | [optional][readonly] |
| **created_on** | **String** |  | [optional][readonly] |
| **updated_on** | **String** |  | [optional][readonly] |
| **credentials** | [**Array&lt;DeviceCredential&gt;**](DeviceCredential.md) |  | [optional] |
| **gateway** | **Array&lt;String&gt;** |  | [optional] |
| **gateway_config** | [**GatewayConfig**](GatewayConfig.md) |  | [optional] |
| **is_gateway** | **Boolean** |  | [optional] |
| **device_errors** | **String** |  | [optional][readonly] |
| **client_online** | **Boolean** |  | [optional][readonly] |
| **last_config_ack_time** | **String** |  | [optional][readonly] |
| **last_config_send_time** | **String** |  | [optional][readonly] |
| **last_error_status** | [**ErrorStatus**](ErrorStatus.md) |  | [optional] |
| **last_error_time** | **String** |  | [optional][readonly] |
| **last_event_time** | **String** |  | [optional][readonly] |
| **last_heartbeat_time** | **String** |  | [optional][readonly] |
| **last_state_time** | **String** |  | [optional][readonly] |
| **log_level** | [**LogLevel**](LogLevel.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **config** | [**DeviceConfig**](DeviceConfig.md) |  | [optional] |
| **state** | [**DeviceState**](DeviceState.md) |  | [optional] |
| **policy** | [**Policy**](Policy.md) |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::Device.new(
  id: null,
  name: null,
  num_id: null,
  parent: null,
  registry: null,
  blocked: null,
  capresent: null,
  subscription: null,
  created_on: null,
  updated_on: null,
  credentials: null,
  gateway: null,
  gateway_config: null,
  is_gateway: null,
  device_errors: null,
  client_online: null,
  last_config_ack_time: null,
  last_config_send_time: null,
  last_error_status: null,
  last_error_time: null,
  last_event_time: null,
  last_heartbeat_time: null,
  last_state_time: null,
  log_level: null,
  metadata: null,
  config: null,
  state: null,
  policy: null
)
```

