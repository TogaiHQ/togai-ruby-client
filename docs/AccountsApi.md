# TogaiClient::AccountsApi

All URIs are relative to *https://sandbox-api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_aliases**](AccountsApi.md#add_aliases) | **POST** /customers/{customer_id}/accounts/{account_id}/add_aliases | Add Aliases to account |
| [**associate_price_plan**](AccountsApi.md#associate_price_plan) | **POST** /customers/{customer_id}/accounts/{account_id}/price_plans | Associate a plan to an account |
| [**create_account**](AccountsApi.md#create_account) | **POST** /customers/{customer_id}/accounts | Create an account |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /customers/{customer_id}/accounts/{account_id} | Delete an account |
| [**get_account**](AccountsApi.md#get_account) | **GET** /customers/{customer_id}/accounts/{account_id} | Get an account |
| [**get_accounts**](AccountsApi.md#get_accounts) | **GET** /customers/{customer_id}/accounts | List accounts of customer |
| [**remove_aliases**](AccountsApi.md#remove_aliases) | **POST** /customers/{customer_id}/accounts/{account_id}/remove_aliases | Remove Aliases to account |
| [**update_account**](AccountsApi.md#update_account) | **PATCH** /customers/{customer_id}/accounts/{account_id} | Update an account |


## add_aliases

> <Account> add_aliases(customer_id, account_id, add_account_aliases_request)

Add Aliases to account

Add Aliases to an account by id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
account_id = 'account_id_example' # String | 
add_account_aliases_request = TogaiClient::AddAccountAliasesRequest.new # AddAccountAliasesRequest | Payload to add aliases to account

begin
  # Add Aliases to account
  result = api_instance.add_aliases(customer_id, account_id, add_account_aliases_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->add_aliases: #{e}"
end
```

#### Using the add_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> add_aliases_with_http_info(customer_id, account_id, add_account_aliases_request)

```ruby
begin
  # Add Aliases to account
  data, status_code, headers = api_instance.add_aliases_with_http_info(customer_id, account_id, add_account_aliases_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->add_aliases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **add_account_aliases_request** | [**AddAccountAliasesRequest**](AddAccountAliasesRequest.md) | Payload to add aliases to account |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## associate_price_plan

> <AssociatePricePlanResponse> associate_price_plan(customer_id, account_id, associate_price_plan_request)

Associate a plan to an account

Associate a plan to an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
account_id = 'account_id_example' # String | 
associate_price_plan_request = TogaiClient::AssociatePricePlanRequest.new({price_plan_name: 'price_plan_name_example', effective_from: Date.today, effective_until: Date.today}) # AssociatePricePlanRequest | Payload to associate a price plan to an account

begin
  # Associate a plan to an account
  result = api_instance.associate_price_plan(customer_id, account_id, associate_price_plan_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->associate_price_plan: #{e}"
end
```

#### Using the associate_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociatePricePlanResponse>, Integer, Hash)> associate_price_plan_with_http_info(customer_id, account_id, associate_price_plan_request)

```ruby
begin
  # Associate a plan to an account
  data, status_code, headers = api_instance.associate_price_plan_with_http_info(customer_id, account_id, associate_price_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociatePricePlanResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->associate_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **associate_price_plan_request** | [**AssociatePricePlanRequest**](AssociatePricePlanRequest.md) | Payload to associate a price plan to an account |  |

### Return type

[**AssociatePricePlanResponse**](AssociatePricePlanResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_account

> <Account> create_account(customer_id, create_account_request)

Create an account

Create an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
create_account_request = TogaiClient::CreateAccountRequest.new({id: 'id_example', name: 'name_example'}) # CreateAccountRequest | Payload to create account

begin
  # Create an account
  result = api_instance.create_account(customer_id, create_account_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->create_account: #{e}"
end
```

#### Using the create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> create_account_with_http_info(customer_id, create_account_request)

```ruby
begin
  # Create an account
  data, status_code, headers = api_instance.create_account_with_http_info(customer_id, create_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **create_account_request** | [**CreateAccountRequest**](CreateAccountRequest.md) | Payload to create account |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_account

> <BaseSuccessResponse> delete_account(customer_id, account_id)

Delete an account

Delete an account by id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Delete an account
  result = api_instance.delete_account(customer_id, account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->delete_account: #{e}"
end
```

#### Using the delete_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_account_with_http_info(customer_id, account_id)

```ruby
begin
  # Delete an account
  data, status_code, headers = api_instance.delete_account_with_http_info(customer_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account

> <Account> get_account(customer_id, account_id)

Get an account

Get an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Get an account
  result = api_instance.get_account(customer_id, account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> get_account_with_http_info(customer_id, account_id)

```ruby
begin
  # Get an account
  data, status_code, headers = api_instance.get_account_with_http_info(customer_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts

> <AccountPaginatedResponse> get_accounts(customer_id, opts)

List accounts of customer

List accounts with pagination and sort

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: '10' # String | 
}

begin
  # List accounts of customer
  result = api_instance.get_accounts(customer_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts: #{e}"
end
```

#### Using the get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountPaginatedResponse>, Integer, Hash)> get_accounts_with_http_info(customer_id, opts)

```ruby
begin
  # List accounts of customer
  data, status_code, headers = api_instance.get_accounts_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **next_token** | **String** |  | [optional] |
| **page_size** | **String** |  | [optional] |

### Return type

[**AccountPaginatedResponse**](AccountPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_aliases

> <Account> remove_aliases(customer_id, account_id, remove_account_aliases_request)

Remove Aliases to account

Remove Aliases to an account by id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
account_id = 'account_id_example' # String | 
remove_account_aliases_request = TogaiClient::RemoveAccountAliasesRequest.new # RemoveAccountAliasesRequest | Payload to remove aliases from account

begin
  # Remove Aliases to account
  result = api_instance.remove_aliases(customer_id, account_id, remove_account_aliases_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->remove_aliases: #{e}"
end
```

#### Using the remove_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> remove_aliases_with_http_info(customer_id, account_id, remove_account_aliases_request)

```ruby
begin
  # Remove Aliases to account
  data, status_code, headers = api_instance.remove_aliases_with_http_info(customer_id, account_id, remove_account_aliases_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->remove_aliases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **remove_account_aliases_request** | [**RemoveAccountAliasesRequest**](RemoveAccountAliasesRequest.md) | Payload to remove aliases from account |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_account

> <Account> update_account(customer_id, account_id, update_account_request)

Update an account

Update an account by id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
account_id = 'account_id_example' # String | 
update_account_request = TogaiClient::UpdateAccountRequest.new # UpdateAccountRequest | Payload to update account

begin
  # Update an account
  result = api_instance.update_account(customer_id, account_id, update_account_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_account: #{e}"
end
```

#### Using the update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> update_account_with_http_info(customer_id, account_id, update_account_request)

```ruby
begin
  # Update an account
  data, status_code, headers = api_instance.update_account_with_http_info(customer_id, account_id, update_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **update_account_request** | [**UpdateAccountRequest**](UpdateAccountRequest.md) | Payload to update account |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

