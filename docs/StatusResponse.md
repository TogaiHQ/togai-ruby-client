# TogaiClient::StatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **greeting** | **String** |  | [optional] |
| **date** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **headers** | [**StatusResponseHeaders**](StatusResponseHeaders.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::StatusResponse.new(
  greeting: null,
  date: null,
  url: null,
  headers: null
)
```

