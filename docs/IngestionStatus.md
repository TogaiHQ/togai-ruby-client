# TogaiClient::IngestionStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Ingestion status |  |
| **status_description** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::IngestionStatus.new(
  status: INGESTION_COMPLETED,
  status_description: Ingestion Completed successfully
)
```

