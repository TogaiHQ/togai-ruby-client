# TogaiClient::PricePlanPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PricePlanListData&gt;**](PricePlanListData.md) |  |  |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlanPaginatedResponse.new(
  data: null,
  next_token: null,
  context: null
)
```

