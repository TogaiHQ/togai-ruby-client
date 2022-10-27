# TogaiClient::RateCardUsageValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **rate_strategy** | **String** |  |  |
| **slab_strategy** | **String** |  |  |
| **slabs** | [**Array&lt;UsageStrategy&gt;**](UsageStrategy.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RateCardUsageValue.new(
  name: null,
  rate_strategy: null,
  slab_strategy: null,
  slabs: null
)
```

