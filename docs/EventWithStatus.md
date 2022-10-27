# TogaiClient::EventWithStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_payload** | [**Event**](Event.md) |  |  |
| **ingestion_status** | [**IngestionStatus**](IngestionStatus.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventWithStatus.new(
  event_payload: null,
  ingestion_status: null
)
```

