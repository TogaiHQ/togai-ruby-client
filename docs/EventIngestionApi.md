# TogaiClient::EventIngestionApi

All URIs are relative to *https://sandbox-api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ingest**](EventIngestionApi.md#ingest) | **POST** /ingest | Ingest events to Togai |
| [**ingest_batch**](EventIngestionApi.md#ingest_batch) | **POST** /ingestBatch | Ingest events to Togai in batch |


## ingest

> ingest(ingest_event_request)

Ingest events to Togai

API to ingest your application event to Togai for billing and usage analytics. To know the limits on the ingestion api, check our docs - https://togai.com/docs/limits.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventIngestionApi.new
ingest_event_request = TogaiClient::IngestEventRequest.new # IngestEventRequest | Request body to ingest events to Togai usage and billing management service.

begin
  # Ingest events to Togai
  api_instance.ingest(ingest_event_request)
rescue TogaiClient::ApiError => e
  puts "Error when calling EventIngestionApi->ingest: #{e}"
end
```

#### Using the ingest_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ingest_with_http_info(ingest_event_request)

```ruby
begin
  # Ingest events to Togai
  data, status_code, headers = api_instance.ingest_with_http_info(ingest_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TogaiClient::ApiError => e
  puts "Error when calling EventIngestionApi->ingest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingest_event_request** | [**IngestEventRequest**](IngestEventRequest.md) | Request body to ingest events to Togai usage and billing management service. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ingest_batch

> <IngestBatchEventResponse> ingest_batch(ingest_batch_event_request)

Ingest events to Togai in batch

API to ingest your application event in batch to Togai for billing and usage analytics. To know the limits on the ingestion api, check our docs - https://togai.com/docs/limits.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventIngestionApi.new
ingest_batch_event_request = TogaiClient::IngestBatchEventRequest.new({events: [TogaiClient::Event.new({event_name: 'event_name_example', id: 'id_example', event_timestamp: Time.now, account_id: 'account_id_example', event_attributes: [TogaiClient::EventAttribute.new({attribute_name: 'apiUsage', attribute_value: 'attribute_value_example'})], dimensions: { key: 'inner_example'}})]}) # IngestBatchEventRequest | Request body to ingest events in batch to Togai usage and billing management service.

begin
  # Ingest events to Togai in batch
  result = api_instance.ingest_batch(ingest_batch_event_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventIngestionApi->ingest_batch: #{e}"
end
```

#### Using the ingest_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IngestBatchEventResponse>, Integer, Hash)> ingest_batch_with_http_info(ingest_batch_event_request)

```ruby
begin
  # Ingest events to Togai in batch
  data, status_code, headers = api_instance.ingest_batch_with_http_info(ingest_batch_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IngestBatchEventResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventIngestionApi->ingest_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingest_batch_event_request** | [**IngestBatchEventRequest**](IngestBatchEventRequest.md) | Request body to ingest events in batch to Togai usage and billing management service. |  |

### Return type

[**IngestBatchEventResponse**](IngestBatchEventResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

