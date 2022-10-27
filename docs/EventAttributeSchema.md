# TogaiClient::EventAttributeSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event attribute. |  |
| **default_unit** | **String** | Unit for the attribute | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventAttributeSchema.new(
  name: distance,
  default_unit: kms
)
```

