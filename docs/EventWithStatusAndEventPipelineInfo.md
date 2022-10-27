# TogaiClient::EventWithStatusAndEventPipelineInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_payload** | [**Event**](Event.md) |  |  |
| **ingestion_status** | [**IngestionStatus**](IngestionStatus.md) |  |  |
| **event_pipeline_info** | [**EventPipelineInfo**](EventPipelineInfo.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventWithStatusAndEventPipelineInfo.new(
  event_payload: null,
  ingestion_status: null,
  event_pipeline_info: null
)
```

