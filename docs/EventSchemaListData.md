# TogaiClient::EventSchemaListData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event. Must be unique for an organization. |  |
| **description** | **String** | Description of the event | [optional] |
| **version** | **Integer** | Version of event schema |  |
| **status** | **String** | Status of event schema * DRAFT - Schema is in draft state  * ACTIVE - Schema is currently active  * INACTIVE - Schema is currently inactive * ARCHIVED - Older version of event schema  | [optional] |
| **attributes** | [**Array&lt;EventAttributeSchema&gt;**](EventAttributeSchema.md) |  |  |
| **dimensions** | [**Array&lt;DimensionsSchema&gt;**](DimensionsSchema.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **associated_usage_meters** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventSchemaListData.new(
  name: null,
  description: null,
  version: 1,
  status: DRAFT,
  attributes: null,
  dimensions: null,
  created_at: null,
  updated_at: null,
  associated_usage_meters: null
)
```

