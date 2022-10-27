# TogaiClient::PricingCycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval** | **String** |  |  |
| **start_type** | **String** |  |  |
| **start_offset** | [**PricingCycleStartOffset**](PricingCycleStartOffset.md) |  |  |
| **grace_period** | **Integer** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingCycle.new(
  interval: null,
  start_type: null,
  start_offset: null,
  grace_period: 3
)
```

