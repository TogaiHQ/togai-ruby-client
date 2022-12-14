# TogaiClient::AssociatePricePlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_name** | **String** | Name of the price plan |  |
| **effective_from** | **Date** | Date of effectiveness of the association. - Expected only if the account already has a price plan associated with it.  |  |
| **effective_until** | **Date** | Date until which the association must be effective. - Expected only if effectiveFrom is present.  |  |
| **price_plan_details_override** | [**PricePlanDetailsOverride**](PricePlanDetailsOverride.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::AssociatePricePlanRequest.new(
  price_plan_name: null,
  effective_from: null,
  effective_until: null,
  price_plan_details_override: null
)
```

