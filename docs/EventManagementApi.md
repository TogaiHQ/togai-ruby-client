# TogaiClient::EventManagementApi

All URIs are relative to *https://sandbox-api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_events**](EventManagementApi.md#get_events) | **GET** /events | Get usage events from Togai |
| [**get_single_event**](EventManagementApi.md#get_single_event) | **GET** /events/{event_id} | Get the usage event given event id. |


## get_events

> <GetEventsResponse> get_events(opts)

Get usage events from Togai

API to get usage events ingested to Togai.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventManagementApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | Pagination token used as a marker to get records from next page.
  status: 'PROCESSED', # String | Filter option to filter the events by processed/unprocessed status.
  account_id: '1234', # String | Filter option to filter the events based on account id.
  page_size: 10, # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
  start_time: 1650110402000, # Integer | Start time filter in epoch milli seconds
  end_time: 1650110402000 # Integer | End time filter in epoch milli seconds
}

begin
  # Get usage events from Togai
  result = api_instance.get_events(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventsResponse>, Integer, Hash)> get_events_with_http_info(opts)

```ruby
begin
  # Get usage events from Togai
  data, status_code, headers = api_instance.get_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |
| **status** | **String** | Filter option to filter the events by processed/unprocessed status. | [optional] |
| **account_id** | **String** | Filter option to filter the events based on account id. | [optional] |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |
| **start_time** | **Integer** | Start time filter in epoch milli seconds | [optional] |
| **end_time** | **Integer** | End time filter in epoch milli seconds | [optional] |

### Return type

[**GetEventsResponse**](GetEventsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_single_event

> <GetEventResponse> get_single_event(event_id)

Get the usage event given event id.

API to get the event given the event id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventManagementApi.new
event_id = 'event_id_example' # String | 

begin
  # Get the usage event given event id.
  result = api_instance.get_single_event(event_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->get_single_event: #{e}"
end
```

#### Using the get_single_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventResponse>, Integer, Hash)> get_single_event_with_http_info(event_id)

```ruby
begin
  # Get the usage event given event id.
  data, status_code, headers = api_instance.get_single_event_with_http_info(event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->get_single_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |

### Return type

[**GetEventResponse**](GetEventResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

