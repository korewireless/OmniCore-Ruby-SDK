# OmniCoreClient::DeviceCommand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binary_data** | **String** | Base64 Encoded Command String |  |
| **subfolder** | **String** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::DeviceCommand.new(
  binary_data: null,
  subfolder: null
)
```

