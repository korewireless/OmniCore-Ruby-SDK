# OmniCoreClient::AuditResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audit** | [**Array&lt;Audit&gt;**](Audit.md) |  | [optional] |
| **total_count** | **Integer** |  | [optional] |
| **page_number** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::AuditResult.new(
  audit: null,
  total_count: null,
  page_number: null,
  page_size: null
)
```

