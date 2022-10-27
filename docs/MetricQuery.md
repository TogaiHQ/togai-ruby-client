# TogaiClient::MetricQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | [**MetricName**](MetricName.md) |  |  |
| **aggregation_period** | **String** |  |  |
| **group_by** | **String** |  | [optional] |
| **filters** | [**Array&lt;MetricQueryFilterEntry&gt;**](MetricQueryFilterEntry.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::MetricQuery.new(
  id: null,
  name: null,
  aggregation_period: null,
  group_by: null,
  filters: null
)
```

