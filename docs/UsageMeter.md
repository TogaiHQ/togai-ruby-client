# TogaiClient::UsageMeter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the usage meter |  |
| **description** | **String** |  | [optional] |
| **type** | **String** | Type of usage meter |  |
| **status** | **String** | Status of usage meter | [optional] |
| **aggregation** | **String** | Aggregation to be applied on usage meter result |  |
| **computations** | [**Array&lt;Computation&gt;**](Computation.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **last_activated_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UsageMeter.new(
  name: rides-usage,
  description: Meter to track cab rides,
  type: COUNTER,
  status: DRAFT,
  aggregation: COUNT,
  computations: null,
  created_at: null,
  last_activated_at: null,
  updated_at: null
)
```

