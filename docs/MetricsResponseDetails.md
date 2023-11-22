# OmniCoreClient::MetricsResponseDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** |  | [optional] |
| **no_of_files** | **Integer** |  | [optional] |
| **file_size** | **Float** |  | [optional] |
| **noofoperations** | **Integer** |  | [optional] |
| **no_of_replays** | **Float** |  | [optional] |
| **no_of_exports** | **Float** |  | [optional] |
| **operations** | [**Array&lt;OperationMetrics&gt;**](OperationMetrics.md) |  | [optional] |
| **details_for_time_period** | [**MetricsData**](MetricsData.md) |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::MetricsResponseDetails.new(
  subscription_id: null,
  no_of_files: null,
  file_size: null,
  noofoperations: null,
  no_of_replays: null,
  no_of_exports: null,
  operations: null,
  details_for_time_period: null
)
```

