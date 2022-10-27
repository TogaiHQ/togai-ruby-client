# TogaiClient::CreateAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the account |  |
| **name** | **String** | Name of the customer |  |
| **aliases** | **Array&lt;String&gt;** | list of aliases for the account. Can be used interchangeably with &#39;id&#39; for event ingestion. | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateAccountRequest.new(
  id: null,
  name: null,
  aliases: null
)
```

