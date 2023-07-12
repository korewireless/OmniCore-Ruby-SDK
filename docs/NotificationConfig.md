# OmnicoreClient::NotificationConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pubsub_topic_name** | **String** | PubsubTopicName: A Topic name. For example, &#x60;projects/myProject/topics/deviceEvents&#x60;. | [optional] |

## Example

```ruby
require 'omnicore_client'

instance = OmnicoreClient::NotificationConfig.new(
  pubsub_topic_name: null
)
```

