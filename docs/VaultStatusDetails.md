# OmniCoreClient::VaultStatusDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** |  | [optional] |
| **storage_type** | **String** |  | [optional] |
| **is_enabled** | **Boolean** |  | [optional] |
| **is_created** | **Boolean** |  | [optional] |
| **updatedon** | **String** |  | [optional] |
| **created_on** | **String** |  | [optional] |
| **mqtt_id** | **String** |  | [optional] |
| **retention_period** | **Integer** |  | [optional] |
| **encryption_key_id** | **Integer** |  | [optional] |
| **is_encrypted** | **Boolean** |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::VaultStatusDetails.new(
  subscription_id: null,
  storage_type: null,
  is_enabled: null,
  is_created: null,
  updatedon: null,
  created_on: null,
  mqtt_id: null,
  retention_period: null,
  encryption_key_id: null,
  is_encrypted: null
)
```

