# TogaiClient::UsageMeterPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;UsageMeter&gt;**](UsageMeter.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UsageMeterPaginatedResponse.new(
  data: null,
  next_token: null,
  context: null
)
```

