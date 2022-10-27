# TogaiClient::MetricDataPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grouped_by** | [**MetricDataPointsGroupedBy**](MetricDataPointsGroupedBy.md) |  | [optional] |
| **timestamps** | **Array&lt;Time&gt;** |  |  |
| **metric_values** | **Array&lt;Float&gt;** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::MetricDataPoints.new(
  grouped_by: null,
  timestamps: null,
  metric_values: null
)
```

