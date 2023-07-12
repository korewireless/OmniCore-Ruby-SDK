# omnicore_client

OmniCoreClient - the Ruby gem for the OmniCore Model and State Management API

This is an OmniCore Model and State Management server.



## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build omnicore_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./omnicore_client-1.8.1.gem
```

(for development, run `gem install --dev ./omnicore_client-1.8.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'omnicore_client', '~> 1.8.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/korewireless/OmniCore-Ruby-SDK, then add the following in the Gemfile:

    gem 'omnicore_client', :git => 'https://github.com/korewireless/OmniCore-Ruby-SDK.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'omnicore_client'

# Setup authorization
OmniCoreClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = OmniCoreClient::DeviceApi.new
subscription_id = 'subscription_id_example' # String | Subscription ID
registry_id = 'registry_id_example' # String | Registry ID
bind = OmniCoreClient::BindRequest.new({device_id: 'device_id_example', gateway_id: 'gateway_id_example'}) # BindRequest | application/json

begin
  result = api_instance.bind_device(subscription_id, registry_id, bind)
  p result
rescue OmniCoreClient::ApiError => e
  puts "Exception when calling DeviceApi->bind_device: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.korewireless.com/omnicore*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OmniCoreClient::DeviceApi* | [**bind_device**](docs/DeviceApi.md#bind_device) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/bindDeviceToGateway | 
*OmniCoreClient::DeviceApi* | [**bind_devices**](docs/DeviceApi.md#bind_devices) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/bindDevicesToGateway | 
*OmniCoreClient::DeviceApi* | [**block_device_communcation**](docs/DeviceApi.md#block_device_communcation) | **PUT** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/communication | 
*OmniCoreClient::DeviceApi* | [**create_device**](docs/DeviceApi.md#create_device) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/devices | 
*OmniCoreClient::DeviceApi* | [**delete_device**](docs/DeviceApi.md#delete_device) | **DELETE** /subscriptions/{subscriptionId}/registries/{registryId}/devices/{deviceId} | 
*OmniCoreClient::DeviceApi* | [**get_config**](docs/DeviceApi.md#get_config) | **GET** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/configVersions | 
*OmniCoreClient::DeviceApi* | [**get_device**](docs/DeviceApi.md#get_device) | **GET** /subscriptions/{subscriptionId}/registries/{registryId}/devices/{deviceId} | 
*OmniCoreClient::DeviceApi* | [**get_devices**](docs/DeviceApi.md#get_devices) | **GET** /subscriptions/{subscriptionId}/registries/{registryId}/devices | 
*OmniCoreClient::DeviceApi* | [**get_states**](docs/DeviceApi.md#get_states) | **GET** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/states | 
*OmniCoreClient::DeviceApi* | [**send_command_to_device**](docs/DeviceApi.md#send_command_to_device) | **POST** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/sendCommandToDevice | 
*OmniCoreClient::DeviceApi* | [**un_bind_device**](docs/DeviceApi.md#un_bind_device) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/unbindDeviceFromGateway | 
*OmniCoreClient::DeviceApi* | [**un_bind_devices**](docs/DeviceApi.md#un_bind_devices) | **POST** /subscriptions/{subscriptionId}/registries/{registryId}/unbindDevicesFromGateway | 
*OmniCoreClient::DeviceApi* | [**update_configuration_to_device**](docs/DeviceApi.md#update_configuration_to_device) | **POST** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/updateConfigurationToDevice | 
*OmniCoreClient::DeviceApi* | [**update_custom_onboard_request**](docs/DeviceApi.md#update_custom_onboard_request) | **POST** /subscriptions/{subscriptionid}/registries/{registryId}/devices/{deviceId}/updateCustomOnboardRequest | 
*OmniCoreClient::DeviceApi* | [**update_device**](docs/DeviceApi.md#update_device) | **PATCH** /subscriptions/{subscriptionId}/registries/{registryId}/devices/{deviceId} | 
*OmniCoreClient::MetricsApi* | [**get_metrics**](docs/MetricsApi.md#get_metrics) | **GET** /subscriptions/{subscriptionId}/metrics | 
*OmniCoreClient::RegistryApi* | [**create_registry**](docs/RegistryApi.md#create_registry) | **POST** /subscriptions/{subscriptionId}/registries | 
*OmniCoreClient::RegistryApi* | [**delete_registry**](docs/RegistryApi.md#delete_registry) | **DELETE** /subscriptions/{subscriptionId}/registries/{registryId} | 
*OmniCoreClient::RegistryApi* | [**get_registries**](docs/RegistryApi.md#get_registries) | **GET** /subscriptions/{subscriptionId}/registries | 
*OmniCoreClient::RegistryApi* | [**get_registry**](docs/RegistryApi.md#get_registry) | **GET** /subscriptions/{subscriptionId}/registries/{registryId} | 
*OmniCoreClient::RegistryApi* | [**send_broadcast_to_devices**](docs/RegistryApi.md#send_broadcast_to_devices) | **POST** /subscriptions/{subscriptionid}/registries/{registryId}/sendBroadcastToDevice | 
*OmniCoreClient::RegistryApi* | [**update_registry**](docs/RegistryApi.md#update_registry) | **PATCH** /subscriptions/{subscriptionId}/registries/{registryId} | 
*OmniCoreClient::SinkApi* | [**create_sink**](docs/SinkApi.md#create_sink) | **POST** /subscriptions/{subscriptionId}/sinks | 
*OmniCoreClient::SinkApi* | [**delete_sink**](docs/SinkApi.md#delete_sink) | **DELETE** /subscriptions/{subscriptionId}/sinks/{sinkId} | 
*OmniCoreClient::SinkApi* | [**get_a_sink**](docs/SinkApi.md#get_a_sink) | **GET** /subscriptions/{subscriptionId}/sinks/{sinkId} | 
*OmniCoreClient::SinkApi* | [**get_sinks**](docs/SinkApi.md#get_sinks) | **GET** /subscriptions/{subscriptionId}/sinks | Get All Sinks


## Documentation for Models

 - [OmniCoreClient::BindRequest](docs/BindRequest.md)
 - [OmniCoreClient::BindRequestIdsGateway](docs/BindRequestIdsGateway.md)
 - [OmniCoreClient::BlockCommunicationBody](docs/BlockCommunicationBody.md)
 - [OmniCoreClient::Config](docs/Config.md)
 - [OmniCoreClient::CustomOnboard](docs/CustomOnboard.md)
 - [OmniCoreClient::Device](docs/Device.md)
 - [OmniCoreClient::DeviceCommand](docs/DeviceCommand.md)
 - [OmniCoreClient::DeviceConfig](docs/DeviceConfig.md)
 - [OmniCoreClient::DeviceConfiguration](docs/DeviceConfiguration.md)
 - [OmniCoreClient::DeviceCredential](docs/DeviceCredential.md)
 - [OmniCoreClient::DeviceRegistry](docs/DeviceRegistry.md)
 - [OmniCoreClient::DeviceState](docs/DeviceState.md)
 - [OmniCoreClient::ErrorFrame](docs/ErrorFrame.md)
 - [OmniCoreClient::ErrorStatus](docs/ErrorStatus.md)
 - [OmniCoreClient::EventNotificationConfig](docs/EventNotificationConfig.md)
 - [OmniCoreClient::GatewayConfig](docs/GatewayConfig.md)
 - [OmniCoreClient::GenericErrorResponse](docs/GenericErrorResponse.md)
 - [OmniCoreClient::HttpConfig](docs/HttpConfig.md)
 - [OmniCoreClient::Info](docs/Info.md)
 - [OmniCoreClient::ListDeviceConfigVersionsResponse](docs/ListDeviceConfigVersionsResponse.md)
 - [OmniCoreClient::ListDeviceRegistries](docs/ListDeviceRegistries.md)
 - [OmniCoreClient::ListDeviceStatesResponse](docs/ListDeviceStatesResponse.md)
 - [OmniCoreClient::ListDevicesResponse](docs/ListDevicesResponse.md)
 - [OmniCoreClient::ListSinks](docs/ListSinks.md)
 - [OmniCoreClient::LogLevel](docs/LogLevel.md)
 - [OmniCoreClient::Metrics](docs/Metrics.md)
 - [OmniCoreClient::MetricsDetails](docs/MetricsDetails.md)
 - [OmniCoreClient::MqttConfig](docs/MqttConfig.md)
 - [OmniCoreClient::NotificationConfig](docs/NotificationConfig.md)
 - [OmniCoreClient::Policy](docs/Policy.md)
 - [OmniCoreClient::PublicKeyCertificate](docs/PublicKeyCertificate.md)
 - [OmniCoreClient::PublicKeyCredential](docs/PublicKeyCredential.md)
 - [OmniCoreClient::RegistryCredential](docs/RegistryCredential.md)
 - [OmniCoreClient::Sink](docs/Sink.md)
 - [OmniCoreClient::X509CertificateDetails](docs/X509CertificateDetails.md)


## Documentation for Authorization


### bearerAuth

- **Type**: Bearer authentication (JWT)

### apiKey


- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

