# OmniCoreClient::SinkApi

All URIs are relative to *https://api.korewireless.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sink**](SinkApi.md#create_sink) | **POST** /omnicore/subscriptions/{subscriptionId}/sinks |  |
| [**delete_sink**](SinkApi.md#delete_sink) | **DELETE** /omnicore/subscriptions/{subscriptionId}/sinks/{sinkId} |  |
| [**get_a_sink**](SinkApi.md#get_a_sink) | **GET** /omnicore/subscriptions/{subscriptionId}/sinks/{sinkId} |  |
| [**get_sinks**](SinkApi.md#get_sinks) | **GET** /omnicore/subscriptions/{subscriptionId}/sinks | Get All Sinks |


## create_sink

> <Sink> create_sink(subscription_id, opts)



Create a Sink

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmniCoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmniCoreClient::SinkApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
opts = {
  sink: OmniCoreClient::Sink.new # Sink | 
}

begin
  
  result = api_instance.create_sink(subscription_id, opts)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling SinkApi->create_sink: #{e}"
end
```

#### Using the create_sink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Sink>, Integer, Hash)> create_sink_with_http_info(subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_sink_with_http_info(subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Sink>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling SinkApi->create_sink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **sink** | [**Sink**](Sink.md) |  | [optional] |

### Return type

[**Sink**](Sink.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sink

> Object delete_sink(subscription_id, sink_id)



Delete a Sink

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmniCoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmniCoreClient::SinkApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
sink_id = 'sink_id_example' # String | Sink ID

begin
  
  result = api_instance.delete_sink(subscription_id, sink_id)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling SinkApi->delete_sink: #{e}"
end
```

#### Using the delete_sink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_sink_with_http_info(subscription_id, sink_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_sink_with_http_info(subscription_id, sink_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OmniCoreClient::ApiError => e
  puts "Error when calling SinkApi->delete_sink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **sink_id** | **String** | Sink ID |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_sink

> <Sink> get_a_sink(subscription_id, sink_id)



Get A Sink

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmniCoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmniCoreClient::SinkApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
sink_id = 'sink_id_example' # String | Sink ID

begin
  
  result = api_instance.get_a_sink(subscription_id, sink_id)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling SinkApi->get_a_sink: #{e}"
end
```

#### Using the get_a_sink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Sink>, Integer, Hash)> get_a_sink_with_http_info(subscription_id, sink_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_a_sink_with_http_info(subscription_id, sink_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Sink>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling SinkApi->get_a_sink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **sink_id** | **String** | Sink ID |  |

### Return type

[**Sink**](Sink.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sinks

> <ListSinks> get_sinks(subscription_id)

Get All Sinks

Get Sinks

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmniCoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmniCoreClient::SinkApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID

begin
  # Get All Sinks
  result = api_instance.get_sinks(subscription_id)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling SinkApi->get_sinks: #{e}"
end
```

#### Using the get_sinks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSinks>, Integer, Hash)> get_sinks_with_http_info(subscription_id)

```ruby
begin
  # Get All Sinks
  data, status_code, headers = api_instance.get_sinks_with_http_info(subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSinks>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling SinkApi->get_sinks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |

### Return type

[**ListSinks**](ListSinks.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

