# OmniCoreClient::VaultApi

All URIs are relative to *https://api.korewireless.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vault_configuration**](VaultApi.md#create_vault_configuration) | **POST** /vault/subscriptions/{subscriptionid}/configurations |  |
| [**delete_configuration**](VaultApi.md#delete_configuration) | **DELETE** /vault/subscriptions/{subscriptionid}/configurations/{configid} |  |
| [**enable_vault**](VaultApi.md#enable_vault) | **POST** /vault/subscriptions/{subscriptionid}/enable-vault |  |
| [**get_exports**](VaultApi.md#get_exports) | **GET** /vault/subscriptions/{subscriptionid}/exports |  |
| [**get_registry_data**](VaultApi.md#get_registry_data) | **GET** /vault/subscriptions/{subscriptionid}/folders |  |
| [**get_replays**](VaultApi.md#get_replays) | **GET** /vault/subscriptions/{subscriptionid}/replays |  |
| [**get_vault_audit**](VaultApi.md#get_vault_audit) | **GET** /vault/subscriptions/{subscriptionid}/audit |  |
| [**get_vault_configurations**](VaultApi.md#get_vault_configurations) | **GET** /vault/subscriptions/{subscriptionid}/configurations |  |
| [**get_vault_files**](VaultApi.md#get_vault_files) | **GET** /vault/subscriptions/{subscriptionid}/registry/{registryid}/files |  |
| [**get_vault_metrics**](VaultApi.md#get_vault_metrics) | **GET** /vault/subscriptions/{subscriptionid}/metrics |  |
| [**get_vault_status**](VaultApi.md#get_vault_status) | **GET** /vault/subscriptions/{subscriptionid}/status |  |
| [**start_export**](VaultApi.md#start_export) | **POST** /vault/subscriptions/{subscriptionid}/exports |  |
| [**start_replay**](VaultApi.md#start_replay) | **POST** /vault/subscriptions/{subscriptionid}/replays |  |


## create_vault_configuration

> <Frame> create_vault_configuration(subscriptionid, opts)



create vault configuration

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
opts = {
  create_configuration: OmniCoreClient::CreateConfiguration.new # CreateConfiguration | application/json
}

begin
  
  result = api_instance.create_vault_configuration(subscriptionid, opts)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->create_vault_configuration: #{e}"
end
```

#### Using the create_vault_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Frame>, Integer, Hash)> create_vault_configuration_with_http_info(subscriptionid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_vault_configuration_with_http_info(subscriptionid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Frame>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->create_vault_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **create_configuration** | [**CreateConfiguration**](CreateConfiguration.md) | application/json | [optional] |

### Return type

[**Frame**](Frame.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_configuration

> <Frame> delete_configuration(subscriptionid, configid)



Delete Configuration

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
configid = 'configid_example' # String | config id

begin
  
  result = api_instance.delete_configuration(subscriptionid, configid)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->delete_configuration: #{e}"
end
```

#### Using the delete_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Frame>, Integer, Hash)> delete_configuration_with_http_info(subscriptionid, configid)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_configuration_with_http_info(subscriptionid, configid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Frame>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->delete_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **configid** | **String** | config id |  |

### Return type

[**Frame**](Frame.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_vault

> <Details> enable_vault(subscriptionid, opts)



Enable/Disable vault for a subscription

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
opts = {
  enable_vault: OmniCoreClient::EnableVault.new({type: 'GCS', action: 'enable'}) # EnableVault | application/json
}

begin
  
  result = api_instance.enable_vault(subscriptionid, opts)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->enable_vault: #{e}"
end
```

#### Using the enable_vault_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Details>, Integer, Hash)> enable_vault_with_http_info(subscriptionid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.enable_vault_with_http_info(subscriptionid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Details>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->enable_vault_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **enable_vault** | [**EnableVault**](EnableVault.md) | application/json | [optional] |

### Return type

[**Details**](Details.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_exports

> <GetExportsResponse> get_exports(subscriptionid)



Get Exports

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID

begin
  
  result = api_instance.get_exports(subscriptionid)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_exports: #{e}"
end
```

#### Using the get_exports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExportsResponse>, Integer, Hash)> get_exports_with_http_info(subscriptionid)

```ruby
begin
  
  data, status_code, headers = api_instance.get_exports_with_http_info(subscriptionid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExportsResponse>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_exports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |

### Return type

[**GetExportsResponse**](GetExportsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_registry_data

> <FolderData> get_registry_data(subscriptionid)



Get vault folder data

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID

begin
  
  result = api_instance.get_registry_data(subscriptionid)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_registry_data: #{e}"
end
```

#### Using the get_registry_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderData>, Integer, Hash)> get_registry_data_with_http_info(subscriptionid)

```ruby
begin
  
  data, status_code, headers = api_instance.get_registry_data_with_http_info(subscriptionid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderData>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_registry_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |

### Return type

[**FolderData**](FolderData.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_replays

> <GetReplaysResponse> get_replays(subscriptionid)



Get Replays

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID

begin
  
  result = api_instance.get_replays(subscriptionid)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_replays: #{e}"
end
```

#### Using the get_replays_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReplaysResponse>, Integer, Hash)> get_replays_with_http_info(subscriptionid)

```ruby
begin
  
  data, status_code, headers = api_instance.get_replays_with_http_info(subscriptionid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReplaysResponse>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_replays_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |

### Return type

[**GetReplaysResponse**](GetReplaysResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vault_audit

> <AuditResult> get_vault_audit(subscriptionid, opts)



Get vault Audit

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
opts = {
  page_number: 56, # Integer | Page Number
  page_size: 56 # Integer | Page Size
}

begin
  
  result = api_instance.get_vault_audit(subscriptionid, opts)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_audit: #{e}"
end
```

#### Using the get_vault_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditResult>, Integer, Hash)> get_vault_audit_with_http_info(subscriptionid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_vault_audit_with_http_info(subscriptionid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditResult>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **page_number** | **Integer** | Page Number | [optional] |
| **page_size** | **Integer** | Page Size | [optional] |

### Return type

[**AuditResult**](AuditResult.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vault_configurations

> <Configurations> get_vault_configurations(subscriptionid)



Get vault configurations

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID

begin
  
  result = api_instance.get_vault_configurations(subscriptionid)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_configurations: #{e}"
end
```

#### Using the get_vault_configurations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Configurations>, Integer, Hash)> get_vault_configurations_with_http_info(subscriptionid)

```ruby
begin
  
  data, status_code, headers = api_instance.get_vault_configurations_with_http_info(subscriptionid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Configurations>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_configurations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |

### Return type

[**Configurations**](Configurations.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vault_files

> <FileDetails> get_vault_files(subscriptionid, registryid, opts)



Get vault files

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
registryid = 'registryid_example' # String | registry ID
opts = {
  file_type: 'file_type_example' # String | file type
}

begin
  
  result = api_instance.get_vault_files(subscriptionid, registryid, opts)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_files: #{e}"
end
```

#### Using the get_vault_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDetails>, Integer, Hash)> get_vault_files_with_http_info(subscriptionid, registryid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_vault_files_with_http_info(subscriptionid, registryid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDetails>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **registryid** | **String** | registry ID |  |
| **file_type** | **String** | file type | [optional] |

### Return type

[**FileDetails**](FileDetails.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vault_metrics

> <MetricsResponse> get_vault_metrics(subscriptionid, opts)



Get vault metrics

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
opts = {
  start_time: 'start_time_example', # String | start time
  end_time: 'end_time_example' # String | end time
}

begin
  
  result = api_instance.get_vault_metrics(subscriptionid, opts)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_metrics: #{e}"
end
```

#### Using the get_vault_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricsResponse>, Integer, Hash)> get_vault_metrics_with_http_info(subscriptionid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_vault_metrics_with_http_info(subscriptionid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricsResponse>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **start_time** | **String** | start time | [optional] |
| **end_time** | **String** | end time | [optional] |

### Return type

[**MetricsResponse**](MetricsResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vault_status

> <VaultStatus> get_vault_status(subscriptionid)



Get vault status

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID

begin
  
  result = api_instance.get_vault_status(subscriptionid)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_status: #{e}"
end
```

#### Using the get_vault_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VaultStatus>, Integer, Hash)> get_vault_status_with_http_info(subscriptionid)

```ruby
begin
  
  data, status_code, headers = api_instance.get_vault_status_with_http_info(subscriptionid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VaultStatus>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->get_vault_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |

### Return type

[**VaultStatus**](VaultStatus.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_export

> <Frame> start_export(subscriptionid, opts)



Start Export

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
opts = {
  start_export_body: OmniCoreClient::StartExportBody.new # StartExportBody | application/json
}

begin
  
  result = api_instance.start_export(subscriptionid, opts)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->start_export: #{e}"
end
```

#### Using the start_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Frame>, Integer, Hash)> start_export_with_http_info(subscriptionid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.start_export_with_http_info(subscriptionid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Frame>
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->start_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **start_export_body** | [**StartExportBody**](StartExportBody.md) | application/json | [optional] |

### Return type

[**Frame**](Frame.md)

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_replay

> String start_replay(subscriptionid, opts)



Start Replay

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

api_instance = OmniCoreClient::VaultApi.new
subscriptionid = 'subscriptionid_example' # String | Subscription ID
opts = {
  replay_body: OmniCoreClient::ReplayBody.new # ReplayBody | application/json
}

begin
  
  result = api_instance.start_replay(subscriptionid, opts)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->start_replay: #{e}"
end
```

#### Using the start_replay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> start_replay_with_http_info(subscriptionid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.start_replay_with_http_info(subscriptionid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue OmniCoreClient::ApiError => e
  puts "Error when calling VaultApi->start_replay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptionid** | **String** | Subscription ID |  |
| **replay_body** | [**ReplayBody**](ReplayBody.md) | application/json | [optional] |

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

