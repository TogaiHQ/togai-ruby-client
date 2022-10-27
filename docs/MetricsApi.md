# TogaiClient::MetricsApi

All URIs are relative to *https://sandbox-api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_metrics**](MetricsApi.md#get_metrics) | **POST** /metrics | Get togai metrics. |


## get_metrics

> <GetMetricsResponse> get_metrics(opts)

Get togai metrics.

To get the metrics, you make a POST request to the /metrics resource. You can query up to five metrics in a single request. Single response dataset can contain a maximum of 100 data points.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::MetricsApi.new
opts = {
  get_metrics_request: TogaiClient::GetMetricsRequest.new({start_time: Time.now, end_time: Time.now, metric_queries: [TogaiClient::MetricQuery.new({id: 'id_example', name: TogaiClient::MetricName::EVENTS, aggregation_period: 'DAY'})]}) # GetMetricsRequest | 
}

begin
  # Get togai metrics.
  result = api_instance.get_metrics(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling MetricsApi->get_metrics: #{e}"
end
```

#### Using the get_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMetricsResponse>, Integer, Hash)> get_metrics_with_http_info(opts)

```ruby
begin
  # Get togai metrics.
  data, status_code, headers = api_instance.get_metrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMetricsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling MetricsApi->get_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_metrics_request** | [**GetMetricsRequest**](GetMetricsRequest.md) |  | [optional] |

### Return type

[**GetMetricsResponse**](GetMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

