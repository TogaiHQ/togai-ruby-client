# TogaiClient::PricePlanListData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the price plan |  |
| **description** | **String** | Description of price plan | [optional] |
| **status** | **String** | Status of Price plan |  |
| **usage_meters** | **Array&lt;String&gt;** | Usage meters name linked to the price plan |  |
| **price_plan_details** | [**PricePlanDetails**](PricePlanDetails.md) |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlanListData.new(
  name: null,
  description: null,
  status: null,
  usage_meters: null,
  price_plan_details: null,
  created_at: null,
  updated_at: null
)
```

