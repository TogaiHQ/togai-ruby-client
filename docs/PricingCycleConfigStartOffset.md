# TogaiClient::PricingCycleConfigStartOffset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day_offset** | **String** | min: \&quot;1\&quot; and max: \&quot;31\&quot; as strings. Spl. string allowed: LAST  |  |
| **month_offset** | **String** | min: \&quot;1\&quot; and max: \&quot;12\&quot;. Spl. string allowed: FIRST / LAST. For QUARTERLY only 1 - 3 is allowed and for HALF_YEARLY 1 - 6. This being an optional field, shouldn&#39;t be passed for MONTHLY.  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingCycleConfigStartOffset.new(
  day_offset: null,
  month_offset: null
)
```

