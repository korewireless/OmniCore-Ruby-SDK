# OmnicoreClient::RegistryApi

All URIs are relative to *https://api.korewireless.com/omnicore*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_registry**](RegistryApi.md#create_registry) | **POST** /subscriptions/{subscriptionId}/registries |  |
| [**delete_registry**](RegistryApi.md#delete_registry) | **DELETE** /subscriptions/{subscriptionId}/registries/{registryId} |  |
| [**get_registries**](RegistryApi.md#get_registries) | **GET** /subscriptions/{subscriptionId}/registries |  |
| [**get_registry**](RegistryApi.md#get_registry) | **GET** /subscriptions/{subscriptionId}/registries/{registryId} |  |
| [**send_broadcast_to_devices**](RegistryApi.md#send_broadcast_to_devices) | **POST** /subscriptions/{subscriptionid}/registries/{registryId}/sendBroadcastToDevice |  |
| [**update_registry**](RegistryApi.md#update_registry) | **PATCH** /subscriptions/{subscriptionId}/registries/{registryId} |  |


## create_registry

> <DeviceRegistry> create_registry(subscription_id, opts)



Create a registry

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmnicoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmnicoreClient::RegistryApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
opts = {
  registry: OmnicoreClient::DeviceRegistry.new({id: 'id_example'}) # DeviceRegistry | application/json
}

begin
  
  result = api_instance.create_registry(subscription_id, opts)
  p result
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->create_registry: #{e}"
end
```

#### Using the create_registry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceRegistry>, Integer, Hash)> create_registry_with_http_info(subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_registry_with_http_info(subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceRegistry>
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->create_registry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry** | [**DeviceRegistry**](DeviceRegistry.md) | application/json | [optional] |

### Return type

[**DeviceRegistry**](DeviceRegistry.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_registry

> <Info> delete_registry(subscription_id, registry_id)



Delete a registry

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmnicoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmnicoreClient::RegistryApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID

begin
  
  result = api_instance.delete_registry(subscription_id, registry_id)
  p result
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->delete_registry: #{e}"
end
```

#### Using the delete_registry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Info>, Integer, Hash)> delete_registry_with_http_info(subscription_id, registry_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_registry_with_http_info(subscription_id, registry_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Info>
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->delete_registry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |

### Return type

[**Info**](Info.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_registries

> <ListDeviceRegistries> get_registries(subscription_id, opts)



Get all registries under a subscription

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmnicoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmnicoreClient::RegistryApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
opts = {
  page_number: 56, # Integer | Page Number
  page_size: 56, # Integer | Page Size
  registry_ids: ['inner_example'] # Array<String> | A list of registry string IDs. For example, ['registry0', 'registry12']. If empty, this field is ignored. Maximum IDs: 10,000
}

begin
  
  result = api_instance.get_registries(subscription_id, opts)
  p result
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->get_registries: #{e}"
end
```

#### Using the get_registries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeviceRegistries>, Integer, Hash)> get_registries_with_http_info(subscription_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_registries_with_http_info(subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeviceRegistries>
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->get_registries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **page_number** | **Integer** | Page Number | [optional] |
| **page_size** | **Integer** | Page Size | [optional] |
| **registry_ids** | [**Array&lt;String&gt;**](String.md) | A list of registry string IDs. For example, [&#39;registry0&#39;, &#39;registry12&#39;]. If empty, this field is ignored. Maximum IDs: 10,000 | [optional] |

### Return type

[**ListDeviceRegistries**](ListDeviceRegistries.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_registry

> <DeviceRegistry> get_registry(subscription_id, registry_id)



Get a registry

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmnicoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmnicoreClient::RegistryApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID

begin
  
  result = api_instance.get_registry(subscription_id, registry_id)
  p result
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->get_registry: #{e}"
end
```

#### Using the get_registry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceRegistry>, Integer, Hash)> get_registry_with_http_info(subscription_id, registry_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_registry_with_http_info(subscription_id, registry_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceRegistry>
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->get_registry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |

### Return type

[**DeviceRegistry**](DeviceRegistry.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_broadcast_to_devices

> Object send_broadcast_to_devices(subscriptionid, registry_id, broadcast)



Send  Broadcast To Devices

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmnicoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmnicoreClient::RegistryApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
broadcast = OmnicoreClient::DeviceCommand.new({binary_data: 'binary_data_example'}) # DeviceCommand | application/json

begin
  
  result = api_instance.send_broadcast_to_devices(subscriptionid, registry_id, broadcast)
  p result
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->send_broadcast_to_devices: #{e}"
end
```

#### Using the send_broadcast_to_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> send_broadcast_to_devices_with_http_info(subscriptionid, registry_id, broadcast)

```ruby
begin
  
  data, status_code, headers = api_instance.send_broadcast_to_devices_with_http_info(subscriptionid, registry_id, broadcast)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->send_broadcast_to_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **broadcast** | [**DeviceCommand**](DeviceCommand.md) | application/json |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_registry

> <DeviceRegistry> update_registry(subscription_id, registry_id, update_mask, opts)



Update a registry

### Examples

```ruby
require 'time'
require 'omnicore_client'
# setup authorization
OmnicoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OmnicoreClient::RegistryApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
update_mask = 'eventNotificationConfigs' # String | values to be updated: eventNotificationConfigs,stateNotificationConfig.pubsub_topic_name,logNotificationConfig.pubsub_topic_name,customOnboardNotificationConfig.pubsub_topic_name,mqttConfig.mqtt_enabled_state,httpConfig.http_enabled_state,logLevel,credentials,customOnboardEnabled
opts = {
  registry: OmnicoreClient::DeviceRegistry.new({id: 'id_example'}) # DeviceRegistry | application/json
}

begin
  
  result = api_instance.update_registry(subscription_id, registry_id, update_mask, opts)
  p result
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->update_registry: #{e}"
end
```

#### Using the update_registry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceRegistry>, Integer, Hash)> update_registry_with_http_info(subscription_id, registry_id, update_mask, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_registry_with_http_info(subscription_id, registry_id, update_mask, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceRegistry>
rescue OmnicoreClient::ApiError => e
  puts "Error when calling RegistryApi->update_registry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **update_mask** | **String** | values to be updated: eventNotificationConfigs,stateNotificationConfig.pubsub_topic_name,logNotificationConfig.pubsub_topic_name,customOnboardNotificationConfig.pubsub_topic_name,mqttConfig.mqtt_enabled_state,httpConfig.http_enabled_state,logLevel,credentials,customOnboardEnabled |  |
| **registry** | [**DeviceRegistry**](DeviceRegistry.md) | application/json | [optional] |

### Return type

[**DeviceRegistry**](DeviceRegistry.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

