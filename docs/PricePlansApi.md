# TogaiClient::PricePlansApi

All URIs are relative to *https://sandbox-api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_price_plan**](PricePlansApi.md#activate_price_plan) | **POST** /price_plans/{price_plan_name}/activate | Activate a price plan |
| [**create_price_plan**](PricePlansApi.md#create_price_plan) | **POST** /price_plans | Create a price plan |
| [**get_price_plan**](PricePlansApi.md#get_price_plan) | **GET** /price_plans/{price_plan_name} | Get a price plan |
| [**get_price_plans**](PricePlansApi.md#get_price_plans) | **GET** /price_plans | List price plans |
| [**update_price_plan**](PricePlansApi.md#update_price_plan) | **PATCH** /price_plans/{price_plan_name} | Update a price plan |


## activate_price_plan

> <PricePlan> activate_price_plan(price_plan_name)

Activate a price plan

Activate a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
price_plan_name = 'price_plan_name_example' # String | 

begin
  # Activate a price plan
  result = api_instance.activate_price_plan(price_plan_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->activate_price_plan: #{e}"
end
```

#### Using the activate_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlan>, Integer, Hash)> activate_price_plan_with_http_info(price_plan_name)

```ruby
begin
  # Activate a price plan
  data, status_code, headers = api_instance.activate_price_plan_with_http_info(price_plan_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlan>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->activate_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_name** | **String** |  |  |

### Return type

[**PricePlan**](PricePlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_price_plan

> <PricePlan> create_price_plan(create_price_plan_request)

Create a price plan

Create a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
create_price_plan_request = TogaiClient::CreatePricePlanRequest.new({name: 'name_example', price_plan_details: TogaiClient::PricePlanDetails.new({pricing_cycle_config: TogaiClient::PricingCycleConfig.new({interval: 'MONTHLY', start_type: 'STATIC', start_offset: TogaiClient::PricingCycleConfigStartOffset.new({day_offset: 'day_offset_example', month_offset: 'month_offset_example'}), grace_period: 3}), rate_cards: [TogaiClient::RateCard.new({display_name: 'display_name_example', pricing_model: TogaiClient::PricingModel::TIERED, rate_config: TogaiClient::RateConfigUsage.new({usage_meter_name: 'usage_meter_name_example', slabs: [TogaiClient::SlabUsage.new({rate: 3.56, start_after: 3.56, price_type: TogaiClient::PriceType::FLAT, order: 37})]})})]})}) # CreatePricePlanRequest | Payload to create price plan

begin
  # Create a price plan
  result = api_instance.create_price_plan(create_price_plan_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->create_price_plan: #{e}"
end
```

#### Using the create_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlan>, Integer, Hash)> create_price_plan_with_http_info(create_price_plan_request)

```ruby
begin
  # Create a price plan
  data, status_code, headers = api_instance.create_price_plan_with_http_info(create_price_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlan>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->create_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_price_plan_request** | [**CreatePricePlanRequest**](CreatePricePlanRequest.md) | Payload to create price plan |  |

### Return type

[**PricePlan**](PricePlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_price_plan

> <PricePlan> get_price_plan(price_plan_name)

Get a price plan

Get a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
price_plan_name = 'price_plan_name_example' # String | 

begin
  # Get a price plan
  result = api_instance.get_price_plan(price_plan_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->get_price_plan: #{e}"
end
```

#### Using the get_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlan>, Integer, Hash)> get_price_plan_with_http_info(price_plan_name)

```ruby
begin
  # Get a price plan
  data, status_code, headers = api_instance.get_price_plan_with_http_info(price_plan_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlan>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->get_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_name** | **String** |  |  |

### Return type

[**PricePlan**](PricePlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_price_plans

> <PricePlanPaginatedResponse> get_price_plans(opts)

List price plans

List price plans with pagination and sort

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: '10' # String | 
}

begin
  # List price plans
  result = api_instance.get_price_plans(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->get_price_plans: #{e}"
end
```

#### Using the get_price_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlanPaginatedResponse>, Integer, Hash)> get_price_plans_with_http_info(opts)

```ruby
begin
  # List price plans
  data, status_code, headers = api_instance.get_price_plans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlanPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->get_price_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **String** |  | [optional] |

### Return type

[**PricePlanPaginatedResponse**](PricePlanPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_price_plan

> <PricePlan> update_price_plan(price_plan_name, update_price_plan_request)

Update a price plan

Update a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
price_plan_name = 'price_plan_name_example' # String | 
update_price_plan_request = TogaiClient::UpdatePricePlanRequest.new # UpdatePricePlanRequest | Payload to update price plan

begin
  # Update a price plan
  result = api_instance.update_price_plan(price_plan_name, update_price_plan_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->update_price_plan: #{e}"
end
```

#### Using the update_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlan>, Integer, Hash)> update_price_plan_with_http_info(price_plan_name, update_price_plan_request)

```ruby
begin
  # Update a price plan
  data, status_code, headers = api_instance.update_price_plan_with_http_info(price_plan_name, update_price_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlan>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->update_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_name** | **String** |  |  |
| **update_price_plan_request** | [**UpdatePricePlanRequest**](UpdatePricePlanRequest.md) | Payload to update price plan |  |

### Return type

[**PricePlan**](PricePlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

