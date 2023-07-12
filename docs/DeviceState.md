# OmnicoreClient::DeviceState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binary_data** | **String** | Base64 Encoded State String | [optional] |
| **update_time** | **String** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmnicoreClient::DeviceState.new(
  binary_data: null,
  update_time: null
)
```

