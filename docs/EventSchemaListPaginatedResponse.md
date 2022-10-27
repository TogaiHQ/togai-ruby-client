# TogaiClient::EventSchemaListPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;EventSchemaListData&gt;**](EventSchemaListData.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventSchemaListPaginatedResponse.new(
  data: null,
  next_token: null,
  context: null
)
```

