# OpenapiClient::DeviceApi

All URIs are relative to *https://api.korewireless.com/omnicore*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bind_device**](DeviceApi.md#bind_device) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/bindDeviceToGateway |  |
| [**bind_devices**](DeviceApi.md#bind_devices) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/bindDevicesToGateway |  |
| [**block_device_communcation**](DeviceApi.md#block_device_communcation) | **PUT** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/communication |  |
| [**create_device**](DeviceApi.md#create_device) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/devices |  |
| [**delete_device**](DeviceApi.md#delete_device) | **DELETE** /subscriptions/{subscriptionId}/registries/{registryId}/devices/{deviceId} |  |
| [**get_config**](DeviceApi.md#get_config) | **GET** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/configVersions |  |
| [**get_device**](DeviceApi.md#get_device) | **GET** /subscriptions/{subscriptionId}/registries/{registryId}/devices/{deviceId} |  |
| [**get_devices**](DeviceApi.md#get_devices) | **GET** /subscriptions/{subscriptionId}/registries/{registryId}/devices |  |
| [**get_states**](DeviceApi.md#get_states) | **GET** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/states |  |
| [**send_command_to_device**](DeviceApi.md#send_command_to_device) | **POST** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/sendCommandToDevice |  |
| [**un_bind_device**](DeviceApi.md#un_bind_device) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/unbindDeviceFromGateway |  |
| [**un_bind_devices**](DeviceApi.md#un_bind_devices) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/unbindDevicesFromGateway |  |
| [**update_configuration_to_device**](DeviceApi.md#update_configuration_to_device) | **POST** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/updateConfigurationToDevice |  |
| [**update_custom_onboard_request**](DeviceApi.md#update_custom_onboard_request) | **POST** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/updateCustomOnboardRequest |  |
| [**update_device**](DeviceApi.md#update_device) | **PATCH** /subscriptions/{subscriptionId}/registries/{registryId}/devices/{deviceId} |  |


## bind_device

> <Info> bind_device(subscription_id, registry_id, bind)



Bind  a device to a gateway under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
bind = OpenapiClient::BindRequest.new({device_id: 'device_id_example', gateway_id: 'gateway_id_example'}) # BindRequest | application/json

begin
  
  result = api_instance.bind_device(subscription_id, registry_id, bind)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->bind_device: #{e}"
end
```

#### Using the bind_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Info>, Integer, Hash)> bind_device_with_http_info(subscription_id, registry_id, bind)

```ruby
begin
  
  data, status_code, headers = api_instance.bind_device_with_http_info(subscription_id, registry_id, bind)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Info>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->bind_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **bind** | [**BindRequest**](BindRequest.md) | application/json |  |

### Return type

[**Info**](Info.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## bind_devices

> <Info> bind_devices(subscription_id, registry_id, bind)



Bind devices to a gateway under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
bind = OpenapiClient::BindRequestIdsGateway.new({device_ids: ['device_ids_example'], gateway_id: 'gateway_id_example'}) # BindRequestIdsGateway | application/json

begin
  
  result = api_instance.bind_devices(subscription_id, registry_id, bind)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->bind_devices: #{e}"
end
```

#### Using the bind_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Info>, Integer, Hash)> bind_devices_with_http_info(subscription_id, registry_id, bind)

```ruby
begin
  
  data, status_code, headers = api_instance.bind_devices_with_http_info(subscription_id, registry_id, bind)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Info>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->bind_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **bind** | [**BindRequestIdsGateway**](BindRequestIdsGateway.md) | application/json |  |

### Return type

[**Info**](Info.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## block_device_communcation

> Object block_device_communcation(subscriptionid, registry_id, device_id, block)



Blocks All Communication From A Device

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

api_instance = OpenapiClient::DeviceApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID
block = OpenapiClient::BlockCommunicationBody.new # BlockCommunicationBody | application/json

begin
  
  result = api_instance.block_device_communcation(subscriptionid, registry_id, device_id, block)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->block_device_communcation: #{e}"
end
```

#### Using the block_device_communcation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> block_device_communcation_with_http_info(subscriptionid, registry_id, device_id, block)

```ruby
begin
  
  data, status_code, headers = api_instance.block_device_communcation_with_http_info(subscriptionid, registry_id, device_id, block)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->block_device_communcation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |
| **block** | [**BlockCommunicationBody**](BlockCommunicationBody.md) | application/json |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_device

> <Device> create_device(subscription_id, registry_id, device)



Create a device under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device = OpenapiClient::Device.new({id: 'id_example'}) # Device | application/json

begin
  
  result = api_instance.create_device(subscription_id, registry_id, device)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->create_device: #{e}"
end
```

#### Using the create_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Device>, Integer, Hash)> create_device_with_http_info(subscription_id, registry_id, device)

```ruby
begin
  
  data, status_code, headers = api_instance.create_device_with_http_info(subscription_id, registry_id, device)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Device>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->create_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device** | [**Device**](Device.md) | application/json |  |

### Return type

[**Device**](Device.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_device

> Object delete_device(subscription_id, registry_id, device_id)



Delete a device under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID

begin
  
  result = api_instance.delete_device(subscription_id, registry_id, device_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->delete_device: #{e}"
end
```

#### Using the delete_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_device_with_http_info(subscription_id, registry_id, device_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_device_with_http_info(subscription_id, registry_id, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->delete_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_config

> <ListDeviceConfigVersionsResponse> get_config(subscriptionid, registry_id, device_id, opts)



Get Configs Of Devices

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

api_instance = OpenapiClient::DeviceApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID
opts = {
  num_versions: 56 # Integer | The number of versions to list. Versions are listed in decreasing order of the version number. The maximum number of versions retained is 10. If this value is zero, it will return all the versions available.
}

begin
  
  result = api_instance.get_config(subscriptionid, registry_id, device_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->get_config: #{e}"
end
```

#### Using the get_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeviceConfigVersionsResponse>, Integer, Hash)> get_config_with_http_info(subscriptionid, registry_id, device_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_config_with_http_info(subscriptionid, registry_id, device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeviceConfigVersionsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->get_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |
| **num_versions** | **Integer** | The number of versions to list. Versions are listed in decreasing order of the version number. The maximum number of versions retained is 10. If this value is zero, it will return all the versions available. | [optional] |

### Return type

[**ListDeviceConfigVersionsResponse**](ListDeviceConfigVersionsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_device

> <Device> get_device(subscription_id, registry_id, device_id)



Get a device under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID

begin
  
  result = api_instance.get_device(subscription_id, registry_id, device_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->get_device: #{e}"
end
```

#### Using the get_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Device>, Integer, Hash)> get_device_with_http_info(subscription_id, registry_id, device_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_device_with_http_info(subscription_id, registry_id, device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Device>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->get_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |

### Return type

[**Device**](Device.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_devices

> <ListDevicesResponse> get_devices(subscription_id, registry_id, opts)



Get all devices under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
opts = {
  page_number: 56, # Integer | Page Number
  page_size: 56, # Integer | The maximum number of devices to return in the response. If this value is zero, the service will select a default size. 
  field_mask: 'field_mask_example', # String | The fields of the Device resource to be returned to the response. The fields id and numId are always returned, along with any other fields specified. A comma-separated list of fully qualified names of fields. Example: 
  device_ids: ['inner_example'], # Array<String> | A list of device string IDs. For example, ['device0', 'device12']. If empty, this field is ignored. Maximum IDs: 10,000
  device_num_ids: ['inner_example'], # Array<String> | A list of device numeric IDs. If empty, this field is ignored. Maximum IDs: 10,000.
  gateway_list_options_associations_device_id: 'gateway_list_options_associations_device_id_example', # String | If set, returns only the gateways with which the specified device is associated. The device ID can be numeric (num_id) or the user-defined string (id). For example, if 456 is specified, returns only the gateways to which the device with num_id 456 is bound.
  gateway_list_options_associations_gateway_id: 'gateway_list_options_associations_gateway_id_example', # String | If set, only devices associated with the specified gateway are returned. The gateway ID can be numeric (num_id) or the user-defined string (id). For example, if 123 is specified, only devices bound to the gateway with num_id 123 are returned
  gateway_list_options_gateway_type: 'gateway_list_options_gateway_type_example' # String | If GATEWAY is specified, only gateways are returned. If NON_GATEWAY is specified, only non-gateway devices are returned. If GATEWAY_TYPE_UNSPECIFIED is specified, all devices are returned.
}

begin
  
  result = api_instance.get_devices(subscription_id, registry_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->get_devices: #{e}"
end
```

#### Using the get_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDevicesResponse>, Integer, Hash)> get_devices_with_http_info(subscription_id, registry_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_devices_with_http_info(subscription_id, registry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDevicesResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->get_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **page_number** | **Integer** | Page Number | [optional] |
| **page_size** | **Integer** | The maximum number of devices to return in the response. If this value is zero, the service will select a default size.  | [optional] |
| **field_mask** | **String** | The fields of the Device resource to be returned to the response. The fields id and numId are always returned, along with any other fields specified. A comma-separated list of fully qualified names of fields. Example:  | [optional] |
| **device_ids** | [**Array&lt;String&gt;**](String.md) | A list of device string IDs. For example, [&#39;device0&#39;, &#39;device12&#39;]. If empty, this field is ignored. Maximum IDs: 10,000 | [optional] |
| **device_num_ids** | [**Array&lt;String&gt;**](String.md) | A list of device numeric IDs. If empty, this field is ignored. Maximum IDs: 10,000. | [optional] |
| **gateway_list_options_associations_device_id** | **String** | If set, returns only the gateways with which the specified device is associated. The device ID can be numeric (num_id) or the user-defined string (id). For example, if 456 is specified, returns only the gateways to which the device with num_id 456 is bound. | [optional] |
| **gateway_list_options_associations_gateway_id** | **String** | If set, only devices associated with the specified gateway are returned. The gateway ID can be numeric (num_id) or the user-defined string (id). For example, if 123 is specified, only devices bound to the gateway with num_id 123 are returned | [optional] |
| **gateway_list_options_gateway_type** | **String** | If GATEWAY is specified, only gateways are returned. If NON_GATEWAY is specified, only non-gateway devices are returned. If GATEWAY_TYPE_UNSPECIFIED is specified, all devices are returned. | [optional] |

### Return type

[**ListDevicesResponse**](ListDevicesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_states

> <ListDeviceStatesResponse> get_states(subscriptionid, registry_id, device_id, opts)



Get States Of Devices

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

api_instance = OpenapiClient::DeviceApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID
opts = {
  num_states: 56 # Integer | The number of states to list. States are listed in descending order of update time. The maximum number of states retained is 10. If this value is zero, it will return all the states available.
}

begin
  
  result = api_instance.get_states(subscriptionid, registry_id, device_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->get_states: #{e}"
end
```

#### Using the get_states_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeviceStatesResponse>, Integer, Hash)> get_states_with_http_info(subscriptionid, registry_id, device_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_states_with_http_info(subscriptionid, registry_id, device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeviceStatesResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->get_states_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |
| **num_states** | **Integer** | The number of states to list. States are listed in descending order of update time. The maximum number of states retained is 10. If this value is zero, it will return all the states available. | [optional] |

### Return type

[**ListDeviceStatesResponse**](ListDeviceStatesResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_command_to_device

> Object send_command_to_device(subscriptionid, registry_id, device_id, command)



Send A Command To A Device

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

api_instance = OpenapiClient::DeviceApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID
command = OpenapiClient::DeviceCommand.new({binary_data: 'binary_data_example'}) # DeviceCommand | application/json

begin
  
  result = api_instance.send_command_to_device(subscriptionid, registry_id, device_id, command)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->send_command_to_device: #{e}"
end
```

#### Using the send_command_to_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> send_command_to_device_with_http_info(subscriptionid, registry_id, device_id, command)

```ruby
begin
  
  data, status_code, headers = api_instance.send_command_to_device_with_http_info(subscriptionid, registry_id, device_id, command)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->send_command_to_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |
| **command** | [**DeviceCommand**](DeviceCommand.md) | application/json |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## un_bind_device

> <Info> un_bind_device(subscription_id, registry_id, unbind)



UnBind  a device from a gateway under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
unbind = OpenapiClient::BindRequest.new({device_id: 'device_id_example', gateway_id: 'gateway_id_example'}) # BindRequest | application/json

begin
  
  result = api_instance.un_bind_device(subscription_id, registry_id, unbind)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->un_bind_device: #{e}"
end
```

#### Using the un_bind_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Info>, Integer, Hash)> un_bind_device_with_http_info(subscription_id, registry_id, unbind)

```ruby
begin
  
  data, status_code, headers = api_instance.un_bind_device_with_http_info(subscription_id, registry_id, unbind)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Info>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->un_bind_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **unbind** | [**BindRequest**](BindRequest.md) | application/json |  |

### Return type

[**Info**](Info.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## un_bind_devices

> <Info> un_bind_devices(subscription_id, registry_id, unbind)



UnBind devices from a gateway under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
unbind = OpenapiClient::BindRequestIdsGateway.new({device_ids: ['device_ids_example'], gateway_id: 'gateway_id_example'}) # BindRequestIdsGateway | application/json

begin
  
  result = api_instance.un_bind_devices(subscription_id, registry_id, unbind)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->un_bind_devices: #{e}"
end
```

#### Using the un_bind_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Info>, Integer, Hash)> un_bind_devices_with_http_info(subscription_id, registry_id, unbind)

```ruby
begin
  
  data, status_code, headers = api_instance.un_bind_devices_with_http_info(subscription_id, registry_id, unbind)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Info>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->un_bind_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **unbind** | [**BindRequestIdsGateway**](BindRequestIdsGateway.md) | application/json |  |

### Return type

[**Info**](Info.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_configuration_to_device

> <DeviceConfig> update_configuration_to_device(subscriptionid, registry_id, device_id, configuration)



Update A Configuration Of A Device

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

api_instance = OpenapiClient::DeviceApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID
configuration = OpenapiClient::DeviceConfiguration.new({binary_data: 'binary_data_example'}) # DeviceConfiguration | application/json

begin
  
  result = api_instance.update_configuration_to_device(subscriptionid, registry_id, device_id, configuration)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->update_configuration_to_device: #{e}"
end
```

#### Using the update_configuration_to_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceConfig>, Integer, Hash)> update_configuration_to_device_with_http_info(subscriptionid, registry_id, device_id, configuration)

```ruby
begin
  
  data, status_code, headers = api_instance.update_configuration_to_device_with_http_info(subscriptionid, registry_id, device_id, configuration)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->update_configuration_to_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |
| **configuration** | [**DeviceConfiguration**](DeviceConfiguration.md) | application/json |  |

### Return type

[**DeviceConfig**](DeviceConfig.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_custom_onboard_request

> <Info> update_custom_onboard_request(subscriptionid, registry_id, device_id, custom_onboard)



Approve/Reject a Custom Onboard Request

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

api_instance = OpenapiClient::DeviceApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID
custom_onboard = OpenapiClient::CustomOnboard.new({id: 'id_example'}) # CustomOnboard | application/json

begin
  
  result = api_instance.update_custom_onboard_request(subscriptionid, registry_id, device_id, custom_onboard)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->update_custom_onboard_request: #{e}"
end
```

#### Using the update_custom_onboard_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Info>, Integer, Hash)> update_custom_onboard_request_with_http_info(subscriptionid, registry_id, device_id, custom_onboard)

```ruby
begin
  
  data, status_code, headers = api_instance.update_custom_onboard_request_with_http_info(subscriptionid, registry_id, device_id, custom_onboard)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Info>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->update_custom_onboard_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |
| **custom_onboard** | [**CustomOnboard**](CustomOnboard.md) | application/json |  |

### Return type

[**Info**](Info.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_device

> <Device> update_device(subscription_id, registry_id, device_id, update_mask, device)



Modify device under a registry

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

api_instance = OpenapiClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
device_id = 'device_id_example' # String | Device ID
update_mask = 'logLevel' # String | Required. Only updates the device fields indicated by this mask. The field mask must not be empty, and it must not contain fields that are immutable or only set by the server. Mutable top-level fields: credentials,logLevel, blocked,policy and metadata
device = OpenapiClient::Device.new({id: 'id_example'}) # Device | application/json

begin
  
  result = api_instance.update_device(subscription_id, registry_id, device_id, update_mask, device)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->update_device: #{e}"
end
```

#### Using the update_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Device>, Integer, Hash)> update_device_with_http_info(subscription_id, registry_id, device_id, update_mask, device)

```ruby
begin
  
  data, status_code, headers = api_instance.update_device_with_http_info(subscription_id, registry_id, device_id, update_mask, device)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Device>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceApi->update_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Subscription ID |  |
| **registry_id** | **String** | Registry ID |  |
| **device_id** | **String** | Device ID |  |
| **update_mask** | **String** | Required. Only updates the device fields indicated by this mask. The field mask must not be empty, and it must not contain fields that are immutable or only set by the server. Mutable top-level fields: credentials,logLevel, blocked,policy and metadata |  |
| **device** | [**Device**](Device.md) | application/json |  |

### Return type

[**Device**](Device.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

