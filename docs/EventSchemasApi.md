# TogaiClient::EventSchemasApi

All URIs are relative to *https://sandbox-api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_event_schema**](EventSchemasApi.md#activate_event_schema) | **POST** /event_schema/{event_schema_name}/activate | Activate an event schema |
| [**create_event_schema**](EventSchemasApi.md#create_event_schema) | **POST** /event_schema | Create an event schema |
| [**deactivate_event_schema**](EventSchemasApi.md#deactivate_event_schema) | **POST** /event_schema/{event_schema_name}/deactivate | Deactivate an event schema |
| [**delete_event_schema**](EventSchemasApi.md#delete_event_schema) | **DELETE** /event_schema/{event_schema_name} | Delete an event schema |
| [**get_event_schema**](EventSchemasApi.md#get_event_schema) | **GET** /event_schema/{event_schema_name} | Get an event schema |
| [**list_event_schema_versions**](EventSchemasApi.md#list_event_schema_versions) | **GET** /event_schema/{event_schema_name}/versions | List all event schema versions |
| [**list_event_schemas**](EventSchemasApi.md#list_event_schemas) | **GET** /event_schema | List event schemas |
| [**update_event_schema**](EventSchemasApi.md#update_event_schema) | **PATCH** /event_schema/{event_schema_name} | Update an event schema |


## activate_event_schema

> <EventSchema> activate_event_schema(event_schema_name)

Activate an event schema

Activate an event schema

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventSchemasApi.new
event_schema_name = 'event_schema_name_example' # String | 

begin
  # Activate an event schema
  result = api_instance.activate_event_schema(event_schema_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->activate_event_schema: #{e}"
end
```

#### Using the activate_event_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventSchema>, Integer, Hash)> activate_event_schema_with_http_info(event_schema_name)

```ruby
begin
  # Activate an event schema
  data, status_code, headers = api_instance.activate_event_schema_with_http_info(event_schema_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventSchema>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->activate_event_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |

### Return type

[**EventSchema**](EventSchema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_event_schema

> <EventSchema> create_event_schema(create_event_schema_request)

Create an event schema

Create an event schema

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventSchemasApi.new
create_event_schema_request = TogaiClient::CreateEventSchemaRequest.new({name: 'name_example', attributes: [TogaiClient::EventAttributeSchema.new({name: 'distance'})], dimensions: [TogaiClient::DimensionsSchema.new({name: 'city'})]}) # CreateEventSchemaRequest | Payload to create event schema

begin
  # Create an event schema
  result = api_instance.create_event_schema(create_event_schema_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->create_event_schema: #{e}"
end
```

#### Using the create_event_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventSchema>, Integer, Hash)> create_event_schema_with_http_info(create_event_schema_request)

```ruby
begin
  # Create an event schema
  data, status_code, headers = api_instance.create_event_schema_with_http_info(create_event_schema_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventSchema>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->create_event_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_event_schema_request** | [**CreateEventSchemaRequest**](CreateEventSchemaRequest.md) | Payload to create event schema |  |

### Return type

[**EventSchema**](EventSchema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deactivate_event_schema

> <EventSchema> deactivate_event_schema(event_schema_name)

Deactivate an event schema

Deactivate an event schema

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventSchemasApi.new
event_schema_name = 'event_schema_name_example' # String | 

begin
  # Deactivate an event schema
  result = api_instance.deactivate_event_schema(event_schema_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->deactivate_event_schema: #{e}"
end
```

#### Using the deactivate_event_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventSchema>, Integer, Hash)> deactivate_event_schema_with_http_info(event_schema_name)

```ruby
begin
  # Deactivate an event schema
  data, status_code, headers = api_instance.deactivate_event_schema_with_http_info(event_schema_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventSchema>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->deactivate_event_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |

### Return type

[**EventSchema**](EventSchema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_event_schema

> <BaseSuccessResponse> delete_event_schema(event_schema_name)

Delete an event schema

Delete an event schema

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventSchemasApi.new
event_schema_name = 'event_schema_name_example' # String | 

begin
  # Delete an event schema
  result = api_instance.delete_event_schema(event_schema_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->delete_event_schema: #{e}"
end
```

#### Using the delete_event_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_event_schema_with_http_info(event_schema_name)

```ruby
begin
  # Delete an event schema
  data, status_code, headers = api_instance.delete_event_schema_with_http_info(event_schema_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->delete_event_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event_schema

> <EventSchema> get_event_schema(event_schema_name, opts)

Get an event schema

Get an event schema

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventSchemasApi.new
event_schema_name = 'event_schema_name_example' # String | 
opts = {
  version: 56 # Integer | Optional version to get a specific version. Gets latest version if it is not provided.
}

begin
  # Get an event schema
  result = api_instance.get_event_schema(event_schema_name, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->get_event_schema: #{e}"
end
```

#### Using the get_event_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventSchema>, Integer, Hash)> get_event_schema_with_http_info(event_schema_name, opts)

```ruby
begin
  # Get an event schema
  data, status_code, headers = api_instance.get_event_schema_with_http_info(event_schema_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventSchema>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->get_event_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |
| **version** | **Integer** | Optional version to get a specific version. Gets latest version if it is not provided. | [optional] |

### Return type

[**EventSchema**](EventSchema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_schema_versions

> <EventSchemaVersionsResponse> list_event_schema_versions(event_schema_name)

List all event schema versions

List all event schema versions

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventSchemasApi.new
event_schema_name = 'event_schema_name_example' # String | 

begin
  # List all event schema versions
  result = api_instance.list_event_schema_versions(event_schema_name)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->list_event_schema_versions: #{e}"
end
```

#### Using the list_event_schema_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventSchemaVersionsResponse>, Integer, Hash)> list_event_schema_versions_with_http_info(event_schema_name)

```ruby
begin
  # List all event schema versions
  data, status_code, headers = api_instance.list_event_schema_versions_with_http_info(event_schema_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventSchemaVersionsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->list_event_schema_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |

### Return type

[**EventSchemaVersionsResponse**](EventSchemaVersionsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_schemas

> <EventSchemaListPaginatedResponse> list_event_schemas(opts)

List event schemas

List event schemas with pagination and sort

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventSchemasApi.new
opts = {
  statuses: 'statuses_example', # String | Filter by provided statuses
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: '10', # String | 
  sort_order: 'ASC' # String | 
}

begin
  # List event schemas
  result = api_instance.list_event_schemas(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->list_event_schemas: #{e}"
end
```

#### Using the list_event_schemas_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventSchemaListPaginatedResponse>, Integer, Hash)> list_event_schemas_with_http_info(opts)

```ruby
begin
  # List event schemas
  data, status_code, headers = api_instance.list_event_schemas_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventSchemaListPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->list_event_schemas_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statuses** | **String** | Filter by provided statuses | [optional] |
| **next_token** | **String** |  | [optional] |
| **page_size** | **String** |  | [optional] |
| **sort_order** | **String** |  | [optional] |

### Return type

[**EventSchemaListPaginatedResponse**](EventSchemaListPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_event_schema

> <EventSchema> update_event_schema(event_schema_name, update_event_schema_request)

Update an event schema

Update an event schema

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventSchemasApi.new
event_schema_name = 'event_schema_name_example' # String | 
update_event_schema_request = TogaiClient::UpdateEventSchemaRequest.new({attributes: [TogaiClient::EventAttributeSchema.new({name: 'distance'})], dimensions: [TogaiClient::DimensionsSchema.new({name: 'city'})]}) # UpdateEventSchemaRequest | Payload to update event schema

begin
  # Update an event schema
  result = api_instance.update_event_schema(event_schema_name, update_event_schema_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->update_event_schema: #{e}"
end
```

#### Using the update_event_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventSchema>, Integer, Hash)> update_event_schema_with_http_info(event_schema_name, update_event_schema_request)

```ruby
begin
  # Update an event schema
  data, status_code, headers = api_instance.update_event_schema_with_http_info(event_schema_name, update_event_schema_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventSchema>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventSchemasApi->update_event_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_schema_name** | **String** |  |  |
| **update_event_schema_request** | [**UpdateEventSchemaRequest**](UpdateEventSchemaRequest.md) | Payload to update event schema |  |

### Return type

[**EventSchema**](EventSchema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

