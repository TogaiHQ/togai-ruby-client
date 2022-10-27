# TogaiClient::EventPipelineInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema** | [**EventPipelineInfoEventSchema**](EventPipelineInfoEventSchema.md) |  | [optional] |
| **usage_meters** | [**Array&lt;EventPipelineInfoUsageMetersInner&gt;**](EventPipelineInfoUsageMetersInner.md) |  | [optional] |
| **price_plans** | [**Array&lt;EventPipelineInfoPricePlansInner&gt;**](EventPipelineInfoPricePlansInner.md) |  | [optional] |
| **account** | [**EventPipelineInfoAccount**](EventPipelineInfoAccount.md) |  | [optional] |
| **customer** | [**EventPipelineInfoCustomer**](EventPipelineInfoCustomer.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventPipelineInfo.new(
  event_schema: null,
  usage_meters: null,
  price_plans: null,
  account: null,
  customer: null
)
```

