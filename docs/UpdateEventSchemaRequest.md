# TogaiClient::UpdateEventSchemaRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the event | [optional] |
| **attributes** | [**Array&lt;EventAttributeSchema&gt;**](EventAttributeSchema.md) |  |  |
| **dimensions** | [**Array&lt;DimensionsSchema&gt;**](DimensionsSchema.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateEventSchemaRequest.new(
  description: null,
  attributes: null,
  dimensions: null
)
```

