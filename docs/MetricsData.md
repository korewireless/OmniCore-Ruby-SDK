# OmniCoreClient::MetricsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;MetricsLogs&gt;**](MetricsLogs.md) |  | [optional] |
| **total_export_size** | **Float** |  | [optional] |
| **total_replay_size** | **Float** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::MetricsData.new(
  data: null,
  total_export_size: null,
  total_replay_size: null
)
```

