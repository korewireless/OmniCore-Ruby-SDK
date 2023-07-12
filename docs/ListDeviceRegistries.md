# OmnicoreClient::ListDeviceRegistries

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_registries** | [**Array&lt;DeviceRegistry&gt;**](DeviceRegistry.md) |  |  |
| **page_number** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **total_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmnicoreClient::ListDeviceRegistries.new(
  device_registries: null,
  page_number: null,
  page_size: null,
  total_count: null
)
```

