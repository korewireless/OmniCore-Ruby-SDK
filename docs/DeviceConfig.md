# OpenapiClient::DeviceConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acknowledged** | **Boolean** |  | [optional] |
| **binary_data** | **String** | Base64 Encoded Comnfig String | [optional] |
| **cloud_update_time** | **String** |  | [optional] |
| **device_ack_time** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeviceConfig.new(
  acknowledged: null,
  binary_data: null,
  cloud_update_time: null,
  device_ack_time: null,
  version: null
)
```

