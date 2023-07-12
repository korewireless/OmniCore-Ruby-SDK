# OpenapiClient::EventNotificationConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pubsub_topic_name** | **String** | PubsubTopicName: A Topic name. For example, &#x60;projects/myProject/topics/deviceEvents&#x60;. | [optional] |
| **subfolder_matches** | **String** | SubfolderMatches: If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading &#39;/&#39; character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventNotificationConfig.new(
  pubsub_topic_name: null,
  subfolder_matches: null
)
```

