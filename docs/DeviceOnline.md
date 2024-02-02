# OmniCoreClient::DeviceOnline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **registry** | **String** |  | [optional][readonly] |
| **client_online** | **Boolean** |  | [optional][readonly] |
| **last_heartbeat_time** | **String** |  | [optional][readonly] |
| **subscription** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::DeviceOnline.new(
  id: null,
  registry: null,
  client_online: null,
  last_heartbeat_time: null,
  subscription: null
)
```

