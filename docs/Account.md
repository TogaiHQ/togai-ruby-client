# TogaiClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the account |  |
| **name** | **String** | Name of the customer |  |
| **aliases** | [**Array&lt;AccountAliases&gt;**](AccountAliases.md) | list of aliases of the account | [optional] |
| **status** | **String** | Status of the account |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Account.new(
  id: null,
  name: null,
  aliases: null,
  status: ACTIVE
)
```

