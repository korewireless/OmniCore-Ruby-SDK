# OmniCoreClient::MetricsDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **no_of_messages_for30_minutes** | **Array&lt;Object&gt;** |  | [optional] |
| **no_of_messages_for48_hours** | **Array&lt;Object&gt;** |  | [optional] |
| **billable_bytes_received** | **Integer** |  | [optional] |
| **billable_bytes_sent** | **Integer** |  | [optional] |
| **billable_message_size** | **Integer** |  | [optional] |
| **bytes_received** | **Integer** |  | [optional] |
| **bytes_sent** | **Integer** |  | [optional] |
| **message_size** | **Integer** |  | [optional] |
| **no_of_ack_messages** | **Integer** |  | [optional] |
| **no_of_command_messages** | **Integer** |  | [optional] |
| **no_of_config_messages** | **Integer** |  | [optional] |
| **no_of_device_connections_failed** | **Integer** |  | [optional] |
| **no_of_devices** | **Integer** |  | [optional] |
| **no_of_dis_connections** | **Integer** |  | [optional] |
| **no_of_event_messages** | **Integer** |  | [optional] |
| **no_of_gateway_connections_failed** | **Integer** |  | [optional] |
| **no_of_gateways** | **Integer** |  | [optional] |
| **no_of_loop_back_messages** | **Integer** |  | [optional] |
| **no_of_messages** | **Integer** |  | [optional] |
| **no_of_publish_errors** | **Integer** |  | [optional] |
| **no_of_registries** | **Integer** |  | [optional] |
| **no_of_state_messages** | **Integer** |  | [optional] |
| **no_of_subscribe** | **Integer** |  | [optional] |
| **no_of_successful_connections** | **Integer** |  | [optional] |
| **no_of_un_subscribe** | **Integer** |  | [optional] |
| **subscription_id** | **String** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::MetricsDetails.new(
  no_of_messages_for30_minutes: null,
  no_of_messages_for48_hours: null,
  billable_bytes_received: null,
  billable_bytes_sent: null,
  billable_message_size: null,
  bytes_received: null,
  bytes_sent: null,
  message_size: null,
  no_of_ack_messages: null,
  no_of_command_messages: null,
  no_of_config_messages: null,
  no_of_device_connections_failed: null,
  no_of_devices: null,
  no_of_dis_connections: null,
  no_of_event_messages: null,
  no_of_gateway_connections_failed: null,
  no_of_gateways: null,
  no_of_loop_back_messages: null,
  no_of_messages: null,
  no_of_publish_errors: null,
  no_of_registries: null,
  no_of_state_messages: null,
  no_of_subscribe: null,
  no_of_successful_connections: null,
  no_of_un_subscribe: null,
  subscription_id: null
)
```

