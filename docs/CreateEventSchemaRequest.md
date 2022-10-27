# TogaiClient::CreateEventSchemaRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event. Must be unique for an organization. |  |
| **description** | **String** | Description of the event | [optional] |
| **attributes** | [**Array&lt;EventAttributeSchema&gt;**](EventAttributeSchema.md) |  |  |
| **dimensions** | [**Array&lt;DimensionsSchema&gt;**](DimensionsSchema.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateEventSchemaRequest.new(
  name: null,
  description: null,
  attributes: null,
  dimensions: null
)
```

