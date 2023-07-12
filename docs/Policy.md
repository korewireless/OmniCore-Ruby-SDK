# OmniCoreClient::Policy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connect** | **Boolean** |  |  |
| **publish_state** | **Boolean** |  |  |
| **publish_events** | **Boolean** |  |  |
| **publish_events_regex** | **String** |  |  |
| **publish_loopback** | **Boolean** |  |  |
| **subscribe_command** | **Boolean** |  |  |
| **subscribe_command_regex** | **String** |  |  |
| **subscribe_broadcast** | **Boolean** |  |  |
| **subscribe_broadcast_regex** | **String** |  |  |
| **subscribe_config** | **Boolean** |  |  |

## Example

```ruby
require 'omnicore_client'

instance = OmniCoreClient::Policy.new(
  connect: null,
  publish_state: null,
  publish_events: null,
  publish_events_regex: null,
  publish_loopback: null,
  subscribe_command: null,
  subscribe_command_regex: null,
  subscribe_broadcast: null,
  subscribe_broadcast_regex: null,
  subscribe_config: null
)
```

