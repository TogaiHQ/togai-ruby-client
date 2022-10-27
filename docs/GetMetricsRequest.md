# TogaiClient::GetMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **Time** |  |  |
| **end_time** | **Time** |  |  |
| **metric_queries** | [**Array&lt;MetricQuery&gt;**](MetricQuery.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::GetMetricsRequest.new(
  start_time: null,
  end_time: null,
  metric_queries: null
)
```

