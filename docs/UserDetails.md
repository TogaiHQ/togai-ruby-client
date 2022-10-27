# TogaiClient::UserDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preferred_username** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **password** | **String** |  |  |
| **email** | **String** |  |  |
| **phone** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UserDetails.new(
  preferred_username: null,
  name: null,
  password: null,
  email: null,
  phone: null
)
```

