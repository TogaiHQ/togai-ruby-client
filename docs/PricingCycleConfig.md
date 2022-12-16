# TogaiClient::PricingCycleConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval** | **String** |  |  |
| **start_type** | **String** |  |  |
| **start_offset** | [**PricingCycleConfigStartOffset**](PricingCycleConfigStartOffset.md) |  |  |
| **grace_period** | **Integer** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingCycleConfig.new(
  interval: null,
  start_type: null,
  start_offset: null,
  grace_period: 3
)
```

