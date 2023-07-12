# OmnicoreClient::ListDevicesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **devices** | [**Array&lt;Device&gt;**](Device.md) |  |  |
| **page_number** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **total_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmnicoreClient::ListDevicesResponse.new(
  devices: null,
  page_number: null,
  page_size: null,
  total_count: null
)
```

