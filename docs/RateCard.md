# TogaiClient::RateCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **usage_config** | [**Hash&lt;String, RateCardUsageValue&gt;**](RateCardUsageValue.md) |  | [optional] |
| **bundle_config** | [**RateCardBundle**](RateCardBundle.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RateCard.new(
  type: null,
  usage_config: null,
  bundle_config: null
)
```

