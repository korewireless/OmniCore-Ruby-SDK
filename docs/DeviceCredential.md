# OmniCoreClient::DeviceCredential

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiration_time** | **String** | ExpirationTime: [Optional] The time at which this credential becomes invalid. This credential will be ignored for new client authentication requests after this timestamp; however, it will not be automatically deleted. | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **public_key** | [**PublicKeyCredential**](PublicKeyCredential.md) |  | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::DeviceCredential.new(
  expiration_time: null,
  id: null,
  public_key: null
)
```

