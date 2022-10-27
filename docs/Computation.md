# TogaiClient::Computation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Optional identifier describing the matcher and computation pair | [optional] |
| **matcher** | **String** | Condition to be applied on event. Upon matching it the corresponding computation will be considered for usage_meter unit calculation. The result of the matcher needs to be truthy (https://jsonlogic.com/truthy.html) in order to be considered as a match.  | [optional] |
| **computation** | **String** | Computation to be applied on an event if it matches the matcher In case of a COUNT aggregation type, computation should be passed as &#39;1&#39;  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Computation.new(
  id: null,
  matcher: {
  &quot;and&quot;: [
    {&quot;in&quot;: [{&quot;var&quot;: &quot;dimension.city&quot;}, &quot;chennai&quot;, &quot;mumbai&quot;]},
    &quot;or&quot;: [
      {&quot;&gt;&quot;: [{&quot;var&quot;: &quot;attribute.distance&quot;}, 100]},
      {&quot;&lt;&quot;: [{&quot;var&quot;: &quot;attribute.distance&quot;}, 20]}
    ]
  ]
}
,
  computation: {&quot;*&quot;:[{&quot;var&quot;:&quot;attributes.distance&quot;},0.4]}
)
```

