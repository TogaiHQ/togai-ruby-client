# TogaiClient::SignupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **user_details** | [**UserDetails**](UserDetails.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::SignupRequest.new(
  name: null,
  description: null,
  user_details: null
)
```

