# OmnicoreClient::DeviceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **binary_data** | **String** | Base64 Encoded Config String |  |
| **subfolder** | **String** |  | [optional] |
| **version_to_update** | **String** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmnicoreClient::DeviceConfiguration.new(
  binary_data: null,
  subfolder: null,
  version_to_update: null
)
```

