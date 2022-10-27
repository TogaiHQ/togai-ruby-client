# TogaiClient::CreateUsageMeterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event. Must be unique for an organization. |  |
| **description** | **String** | Description of the event | [optional] |
| **type** | **String** | Type of usage meter |  |
| **aggregation** | **String** | Aggregation to be applied on usage meter result |  |
| **computations** | [**Array&lt;Computation&gt;**](Computation.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateUsageMeterRequest.new(
  name: null,
  description: null,
  type: COUNTER,
  aggregation: DRAFT,
  computations: null
)
```

