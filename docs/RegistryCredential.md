# OmniCoreClient::RegistryCredential

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_key_certificate** | [**PublicKeyCertificate**](PublicKeyCertificate.md) |  | [optional] |
| **id** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::RegistryCredential.new(
  public_key_certificate: null,
  id: null
)
```

