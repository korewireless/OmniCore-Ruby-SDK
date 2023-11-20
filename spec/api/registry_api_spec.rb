=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.2
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OmniCoreClient::RegistryApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RegistryApi' do
  before do
    # run before each test
    @api_instance = OmniCoreClient::RegistryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RegistryApi' do
    it 'should create an instance of RegistryApi' do
      expect(@api_instance).to be_instance_of(OmniCoreClient::RegistryApi)
    end
  end

  # unit tests for create_registry
  # Create a registry
  # @param subscription_id Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [DeviceRegistry] :registry application/json
  # @return [DeviceRegistry]
  describe 'create_registry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_registry
  # Delete a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param [Hash] opts the optional parameters
  # @return [Info]
  describe 'delete_registry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_registries
  # Get all registries under a subscription
  # @param subscription_id Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_number Page Number
  # @option opts [Integer] :page_size Page Size
  # @option opts [Array<String>] :registry_ids A list of registry string IDs. For example, [&#39;registry0&#39;, &#39;registry12&#39;]. If empty, this field is ignored. Maximum IDs: 10,000
  # @return [ListDeviceRegistries]
  describe 'get_registries test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_registry
  # Get a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param [Hash] opts the optional parameters
  # @return [DeviceRegistry]
  describe 'get_registry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_broadcast_to_devices
  # Send  Broadcast To Devices
  # @param subscriptionid Subscription ID
  # @param registry_id Registry ID
  # @param broadcast application/json
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'send_broadcast_to_devices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_registry
  # Update a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param update_mask values to be updated: eventNotificationConfigs,stateNotificationConfig.pubsub_topic_name,logNotificationConfig.pubsub_topic_name,customOnboardNotificationConfig.pubsub_topic_name,mqttConfig.mqtt_enabled_state,httpConfig.http_enabled_state,logLevel,credentials,customOnboardEnabled
  # @param [Hash] opts the optional parameters
  # @option opts [DeviceRegistry] :registry application/json
  # @return [DeviceRegistry]
  describe 'update_registry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
