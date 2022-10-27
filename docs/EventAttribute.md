# TogaiClient::EventAttribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute_name** | **String** | Name of the event attribute |  |
| **attribute_value** | **String** | Value of the event attribute |  |
| **attribute_value_unit** | **String** | Unit with which the attribute value was measured. Natively supported units - \&quot;Meters, Miles, Kilometers, Grams, Kilograms, ounces, Pounds, Minutes, Hours, Seconds, Milliseconds, Microseconds, None\&quot;. Clients are free to add any other custom units. | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventAttribute.new(
  attribute_name: apiUsage,
  attribute_value: null,
  attribute_value_unit: null
)
```

