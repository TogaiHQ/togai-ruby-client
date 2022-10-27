# TogaiClient::PlanOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_name** | **String** |  |  |
| **override** | [**RateCard**](RateCard.md) |  | [optional] |
| **start_date** | **Time** |  |  |
| **end_date** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PlanOverride.new(
  price_plan_name: null,
  override: null,
  start_date: null,
  end_date: null
)
```

