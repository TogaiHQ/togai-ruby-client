# TogaiClient::UsageMetersApi

All URIs are relative to *https://sandbox-api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_usage_meter**](UsageMetersApi.md#activate_usage_meter) | **POST** /event_schema/{event_schema_name}/usage_meters/{usage_meter_name}/activate | Activate usage meter |
| [**create_usage_meter**](UsageMetersApi.md#create_usage_meter) | **POST** /event_schema/{event_schema_name}/usage_meters | Create an usage meter |
| [**deactivate_usage_meter**](UsageMetersApi.md#deactivate_usage_meter) | **POST** /event_schema/{event_schema_name}/usage_meters/{usage_meter_name}/deactivate | Deactivate usage meter |
| [**delete_usage_meter**](UsageMetersApi.md#delete_usage_meter) | **DELETE** /usage_meter/{usage_meter_name} | Delete an Usage Meter |
| [**get_usage_meter**](UsageMetersApi.md#get_usage_meter) | **GET** /event_schema/{event_schema_name}/usage_meters/{usage_meter_name} | Get usage meter |
| [**get_usage_meters_for_event_schema**](UsageMetersApi.md#get_usage_meters_for_event_schema) | **GET** /event_schema/{event_schema_name}/usage_meters | List usage meters for event schema |
| [**update_usage_meter**](UsageMetersApi.md#update_usage_meter) | **PATCH** /event_schema/{event_schema_name}/usage_meters/{usage_meter_name} | Update an usage meter |


## activate_usage_meter

> <UsageMeter> activate_usage_meter(event_schema_name, usage_meter_name)

Activate usage meter

Activate usage meter

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
event_schema_name = 'event_schema_name_example' # String | 
usage_meter_name = 'usage_meter_name_example' # String | 

begin
  # Activate usage meter
  result = api_instance.activate_usage_meter(event_schema_name, usage_meter_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->activate_usage_meter: #{e}"
end
```

#### Using the activate_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> activate_usage_meter_with_http_info(event_schema_name, usage_meter_name)

```ruby
begin
  # Activate usage meter
  data, status_code, headers = api_instance.activate_usage_meter_with_http_info(event_schema_name, usage_meter_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->activate_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |
| **usage_meter_name** | **String** |  |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_usage_meter

> <UsageMeter> create_usage_meter(event_schema_name, create_usage_meter_request)

Create an usage meter

Create an usage meter

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
event_schema_name = 'event_schema_name_example' # String | 
create_usage_meter_request = TogaiClient::CreateUsageMeterRequest.new({name: 'name_example', type: 'COUNTER', aggregation: 'COUNT'}) # CreateUsageMeterRequest | Payload to create usage meter

begin
  # Create an usage meter
  result = api_instance.create_usage_meter(event_schema_name, create_usage_meter_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->create_usage_meter: #{e}"
end
```

#### Using the create_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> create_usage_meter_with_http_info(event_schema_name, create_usage_meter_request)

```ruby
begin
  # Create an usage meter
  data, status_code, headers = api_instance.create_usage_meter_with_http_info(event_schema_name, create_usage_meter_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->create_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |
| **create_usage_meter_request** | [**CreateUsageMeterRequest**](CreateUsageMeterRequest.md) | Payload to create usage meter |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deactivate_usage_meter

> <UsageMeter> deactivate_usage_meter(event_schema_name, usage_meter_name)

Deactivate usage meter

Deactivate usage meter

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
event_schema_name = 'event_schema_name_example' # String | 
usage_meter_name = 'usage_meter_name_example' # String | 

begin
  # Deactivate usage meter
  result = api_instance.deactivate_usage_meter(event_schema_name, usage_meter_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->deactivate_usage_meter: #{e}"
end
```

#### Using the deactivate_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> deactivate_usage_meter_with_http_info(event_schema_name, usage_meter_name)

```ruby
begin
  # Deactivate usage meter
  data, status_code, headers = api_instance.deactivate_usage_meter_with_http_info(event_schema_name, usage_meter_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->deactivate_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |
| **usage_meter_name** | **String** |  |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_usage_meter

> <BaseSuccessResponse> delete_usage_meter(usage_meter_name)

Delete an Usage Meter

Delete an Usage Meter

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
usage_meter_name = 'usage_meter_name_example' # String | 

begin
  # Delete an Usage Meter
  result = api_instance.delete_usage_meter(usage_meter_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->delete_usage_meter: #{e}"
end
```

#### Using the delete_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_usage_meter_with_http_info(usage_meter_name)

```ruby
begin
  # Delete an Usage Meter
  data, status_code, headers = api_instance.delete_usage_meter_with_http_info(usage_meter_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->delete_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage_meter_name** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_usage_meter

> <UsageMeter> get_usage_meter(event_schema_name, usage_meter_name)

Get usage meter

Get usage meter

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
event_schema_name = 'event_schema_name_example' # String | 
usage_meter_name = 'usage_meter_name_example' # String | 

begin
  # Get usage meter
  result = api_instance.get_usage_meter(event_schema_name, usage_meter_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->get_usage_meter: #{e}"
end
```

#### Using the get_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> get_usage_meter_with_http_info(event_schema_name, usage_meter_name)

```ruby
begin
  # Get usage meter
  data, status_code, headers = api_instance.get_usage_meter_with_http_info(event_schema_name, usage_meter_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->get_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |
| **usage_meter_name** | **String** |  |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_usage_meters_for_event_schema

> <UsageMeterPaginatedResponse> get_usage_meters_for_event_schema(event_schema_name, opts)

List usage meters for event schema

List usage meters for event schema with pagination and sort

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
event_schema_name = 'event_schema_name_example' # String | 
opts = {
  statuses: 'statuses_example', # String | Filter by provided statuses
  aggregations: 'aggregations_example', # String | Filter by provided aggregations
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: '10', # String | 
  sort_order: 'ASC' # String | 
}

begin
  # List usage meters for event schema
  result = api_instance.get_usage_meters_for_event_schema(event_schema_name, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->get_usage_meters_for_event_schema: #{e}"
end
```

#### Using the get_usage_meters_for_event_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeterPaginatedResponse>, Integer, Hash)> get_usage_meters_for_event_schema_with_http_info(event_schema_name, opts)

```ruby
begin
  # List usage meters for event schema
  data, status_code, headers = api_instance.get_usage_meters_for_event_schema_with_http_info(event_schema_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeterPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->get_usage_meters_for_event_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |
| **statuses** | **String** | Filter by provided statuses | [optional] |
| **aggregations** | **String** | Filter by provided aggregations | [optional] |
| **next_token** | **String** |  | [optional] |
| **page_size** | **String** |  | [optional] |
| **sort_order** | **String** |  | [optional] |

### Return type

[**UsageMeterPaginatedResponse**](UsageMeterPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_usage_meter

> <UsageMeter> update_usage_meter(event_schema_name, usage_meter_name, update_usage_meter_request)

Update an usage meter

Update an usage meter

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
event_schema_name = 'event_schema_name_example' # String | 
usage_meter_name = 'usage_meter_name_example' # String | 
update_usage_meter_request = TogaiClient::UpdateUsageMeterRequest.new({type: 'COUNTER', aggregation: 'COUNT'}) # UpdateUsageMeterRequest | Payload to create usage meter

begin
  # Update an usage meter
  result = api_instance.update_usage_meter(event_schema_name, usage_meter_name, update_usage_meter_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->update_usage_meter: #{e}"
end
```

#### Using the update_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> update_usage_meter_with_http_info(event_schema_name, usage_meter_name, update_usage_meter_request)

```ruby
begin
  # Update an usage meter
  data, status_code, headers = api_instance.update_usage_meter_with_http_info(event_schema_name, usage_meter_name, update_usage_meter_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->update_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |
| **usage_meter_name** | **String** |  |  |
| **update_usage_meter_request** | [**UpdateUsageMeterRequest**](UpdateUsageMeterRequest.md) | Payload to create usage meter |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

