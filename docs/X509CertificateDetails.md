# OmnicoreClient::X509CertificateDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry_time** | **String** | ExpiryTime: The time the certificate becomes invalid. | [optional] |
| **issuer** | **String** | Issuer: The entity that signed the certificate. | [optional] |
| **public_key_type** | **String** | PublicKeyType: The type of public key in the certificate. | [optional] |
| **signature_algorithm** | **String** | SignatureAlgorithm: The algorithm used to sign the certificate. | [optional] |
| **start_time** | **String** | StartTime: The time the certificate becomes valid. | [optional] |
| **subject** | **String** | Subject: The entity the certificate and public key belong to. | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmnicoreClient::X509CertificateDetails.new(
  expiry_time: null,
  issuer: null,
  public_key_type: null,
  signature_algorithm: null,
  start_time: null,
  subject: null
)
```

