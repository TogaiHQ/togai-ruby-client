# TogaiClient::IngestEventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingestion_request_id** | **String** | On successful ingestion acceptance request, ingestion request id will be returned. This ingestion id can be used by clients to query the status of ingestion (IN_PROGRESS, COMPLETED). |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::IngestEventResponse.new(
  ingestion_request_id: null
)
```

