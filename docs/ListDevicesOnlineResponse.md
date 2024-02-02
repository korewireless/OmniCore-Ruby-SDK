# OmniCoreClient::ListDevicesOnlineResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **devices** | [**Array&lt;DeviceOnline&gt;**](DeviceOnline.md) |  |  |
| **page_number** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **total_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::ListDevicesOnlineResponse.new(
  devices: null,
  page_number: null,
  page_size: null,
  total_count: null
)
```

