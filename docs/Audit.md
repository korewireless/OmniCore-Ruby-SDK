# OmniCoreClient::Audit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** |  | [optional] |
| **operation** | **String** |  | [optional] |
| **actor** | **String** |  | [optional] |
| **updatedon** | **String** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::Audit.new(
  subscription_id: null,
  operation: null,
  actor: null,
  updatedon: null
)
```

