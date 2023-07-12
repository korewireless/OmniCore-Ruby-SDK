# OpenapiClient::MetricsApi

All URIs are relative to *https://api.korewireless.com/omnicore*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_metrics**](MetricsApi.md#get_metrics) | **GET** /subscriptions/{subscriptionId}/metrics |  |


## get_metrics

> <Metrics> get_metrics(subscription_id)



get metrics

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MetricsApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID

begin
  
  result = api_instance.get_metrics(subscription_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->get_metrics: #{e}"
end
```

#### Using the get_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Metrics>, Integer, Hash)> get_metrics_with_http_info(subscription_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_metrics_with_http_info(subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Metrics>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MetricsApi->get_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |

### Return type

[**Metrics**](Metrics.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

