# TogaiClient::CustomersApi

All URIs are relative to *https://sandbox-api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a customer |
| [**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /customers/{customer_id} | Delete a customer |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /customers/{customer_id} | Get a customer |
| [**get_customers**](CustomersApi.md#get_customers) | **GET** /customers | List customers |
| [**update_customer**](CustomersApi.md#update_customer) | **PATCH** /customers/{customer_id} | Update a customer |


## create_customer

> <CreateCustomerResponse> create_customer(create_customer_request)

Create a customer

Create a customer and a default account corresponding to it

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
create_customer_request = TogaiClient::CreateCustomerRequest.new({id: 'id_example', name: 'name_example', primary_email: 'primary_email_example', billing_address: 'billing_address_example'}) # CreateCustomerRequest | Payload to create customer

begin
  # Create a customer
  result = api_instance.create_customer(create_customer_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerResponse>, Integer, Hash)> create_customer_with_http_info(create_customer_request)

```ruby
begin
  # Create a customer
  data, status_code, headers = api_instance.create_customer_with_http_info(create_customer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_customer_request** | [**CreateCustomerRequest**](CreateCustomerRequest.md) | Payload to create customer |  |

### Return type

[**CreateCustomerResponse**](CreateCustomerResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_customer

> <BaseSuccessResponse> delete_customer(customer_id)

Delete a customer

Delete a customer by id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
customer_id = 'customer_id_example' # String | 

begin
  # Delete a customer
  result = api_instance.delete_customer(customer_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customer: #{e}"
end
```

#### Using the delete_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_customer_with_http_info(customer_id)

```ruby
begin
  # Delete a customer
  data, status_code, headers = api_instance.delete_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer

> <Customer> get_customer(customer_id)

Get a customer

Get a customer by id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
customer_id = 'customer_id_example' # String | 

begin
  # Get a customer
  result = api_instance.get_customer(customer_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> get_customer_with_http_info(customer_id)

```ruby
begin
  # Get a customer
  data, status_code, headers = api_instance.get_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customers

> <CustomerPaginatedResponse> get_customers(opts)

List customers

List customers with pagination and sort

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: '10' # String | 
}

begin
  # List customers
  result = api_instance.get_customers(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers: #{e}"
end
```

#### Using the get_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPaginatedResponse>, Integer, Hash)> get_customers_with_http_info(opts)

```ruby
begin
  # List customers
  data, status_code, headers = api_instance.get_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **String** |  | [optional] |

### Return type

[**CustomerPaginatedResponse**](CustomerPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <Customer> update_customer(customer_id, update_customer_request)

Update a customer

Update a customer by id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
customer_id = 'customer_id_example' # String | 
update_customer_request = TogaiClient::UpdateCustomerRequest.new # UpdateCustomerRequest | Payload to update customer

begin
  # Update a customer
  result = api_instance.update_customer(customer_id, update_customer_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> update_customer_with_http_info(customer_id, update_customer_request)

```ruby
begin
  # Update a customer
  data, status_code, headers = api_instance.update_customer_with_http_info(customer_id, update_customer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **update_customer_request** | [**UpdateCustomerRequest**](UpdateCustomerRequest.md) | Payload to update customer |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

