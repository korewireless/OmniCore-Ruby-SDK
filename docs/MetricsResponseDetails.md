# OmniCoreClient::MetricsResponseDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** |  | [optional] |
| **no_of_files** | **Integer** |  | [optional] |
| **file_size** | **Float** |  | [optional] |
| **noofoperations** | **Integer** |  | [optional] |
| **operations** | [**Array&lt;OperationMetrics&gt;**](OperationMetrics.md) |  | [optional] |
| **details_for_time_period** | [**Array&lt;MetricsData&gt;**](MetricsData.md) |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::MetricsResponseDetails.new(
  subscription_id: null,
  no_of_files: null,
  file_size: null,
  noofoperations: null,
  operations: null,
  details_for_time_period: null
)
```

