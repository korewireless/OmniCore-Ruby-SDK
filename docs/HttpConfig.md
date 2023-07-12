# OmniCoreClient::HttpConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **http_enabled_state** | **String** | HttpEnabledState: If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.  Possible values:   \&quot;HTTP_STATE_UNSPECIFIED\&quot; - No HTTP state specified. If not specified, DeviceService will be enabled by default.   \&quot;HTTP_ENABLED\&quot; - Enables DeviceService (HTTP) service for the registry.   \&quot;HTTP_DISABLED\&quot; - Disables DeviceService (HTTP) service for the registry. | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::HttpConfig.new(
  http_enabled_state: null
)
```

