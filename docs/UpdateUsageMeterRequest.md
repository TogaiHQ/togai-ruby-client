# TogaiClient::UpdateUsageMeterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the event | [optional] |
| **type** | **String** | Type of usage meter * COUNTER - Count usage  * GAUGE - Not supported at the moment * TIMER - Not supported at the moment  |  |
| **aggregation** | **String** | Aggregation to be applied on usage meter result * COUNT - Counts number of events matching the usage meter * SUM - Sums up results of computation of all events matching usage meter  |  |
| **computations** | [**Array&lt;Computation&gt;**](Computation.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateUsageMeterRequest.new(
  description: null,
  type: COUNTER,
  aggregation: COUNT,
  computations: null
)
```

