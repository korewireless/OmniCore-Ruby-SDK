# OmniCoreClient::Sink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **subscription** | **String** |  | [optional][readonly] |
| **sink** | **String** |  | [optional] |
| **config** | [**Config**](Config.md) |  | [optional] |
| **status** | **Boolean** |  | [optional][readonly] |
| **createdon** | **String** |  | [optional][readonly] |
| **updatedon** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::Sink.new(
  id: null,
  subscription: null,
  sink: null,
  config: null,
  status: null,
  createdon: null,
  updatedon: null
)
```

