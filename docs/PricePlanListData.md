# TogaiClient::PricePlanListData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the price plan |  |
| **description** | **String** | Description of price plan | [optional] |
| **status** | **String** | Status of Price plan |  |
| **pricing_cycle** | [**PricingCycle**](PricingCycle.md) |  |  |
| **usage_meters** | **Array&lt;String&gt;** | Usage meters name linked to the price plan |  |
| **pricing_type** | **String** | Pricing type of the price plan |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlanListData.new(
  name: null,
  description: null,
  status: null,
  pricing_cycle: null,
  usage_meters: null,
  pricing_type: null,
  created_at: null,
  updated_at: null
)
```

