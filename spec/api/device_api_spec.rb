=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.10
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OmniCoreClient::DeviceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeviceApi' do
  before do
    # run before each test
    @api_instance = OmniCoreClient::DeviceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeviceApi' do
    it 'should create an instance of DeviceApi' do
      expect(@api_instance).to be_instance_of(OmniCoreClient::DeviceApi)
    end
  end

  # unit tests for bind_device
  # Bind  a device to a gateway under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param bind application/json
  # @param [Hash] opts the optional parameters
  # @return [Info]
  describe 'bind_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bind_devices
  # Bind devices to a gateway under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param bind application/json
  # @param [Hash] opts the optional parameters
  # @return [Info]
  describe 'bind_devices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for block_device_communcation
  # Blocks All Communication From A Device
  # @param subscriptionid Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param block application/json
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'block_device_communcation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_device
  # Create a device under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param device application/json
  # @param [Hash] opts the optional parameters
  # @return [Device]
  describe 'create_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_device
  # Delete a device under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_config
  # Get Configs Of Devices
  # @param subscriptionid Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :num_versions The number of versions to list. Versions are listed in decreasing order of the version number. The maximum number of versions retained is 10. If this value is zero, it will return all the versions available.
  # @return [ListDeviceConfigVersionsResponse]
  describe 'get_config test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device
  # Get a device under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param [Hash] opts the optional parameters
  # @return [Device]
  describe 'get_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_devices
  # Get all devices under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_number Page Number
  # @option opts [Integer] :page_size The maximum number of devices to return in the response. If this value is zero, the service will select a default size. 
  # @option opts [String] :field_mask The fields of the Device resource to be returned to the response. The fields id and numId are always returned, along with any other fields specified. A comma-separated list of fully qualified names of fields. Example: 
  # @option opts [Array<String>] :device_ids A list of device string IDs. For example, [&#39;device0&#39;, &#39;device12&#39;]. If empty, this field is ignored. Maximum IDs: 10,000
  # @option opts [Array<String>] :device_num_ids A list of device numeric IDs. If empty, this field is ignored. Maximum IDs: 10,000.
  # @option opts [String] :gateway_list_options_associations_device_id If set, returns only the gateways with which the specified device is associated. The device ID can be numeric (num_id) or the user-defined string (id). For example, if 456 is specified, returns only the gateways to which the device with num_id 456 is bound.
  # @option opts [String] :gateway_list_options_associations_gateway_id If set, only devices associated with the specified gateway are returned. The gateway ID can be numeric (num_id) or the user-defined string (id). For example, if 123 is specified, only devices bound to the gateway with num_id 123 are returned
  # @option opts [String] :gateway_list_options_gateway_type If GATEWAY is specified, only gateways are returned. If NON_GATEWAY is specified, only non-gateway devices are returned. If GATEWAY_TYPE_UNSPECIFIED is specified, all devices are returned.
  # @return [ListDevicesResponse]
  describe 'get_devices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_states
  # Get States Of Devices
  # @param subscriptionid Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :num_states The number of states to list. States are listed in descending order of update time. The maximum number of states retained is 10. If this value is zero, it will return all the states available.
  # @return [ListDeviceStatesResponse]
  describe 'get_states test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_subscription_devices
  # Get all devices under a subscription
  # @param subscription_id Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_number Page Number
  # @option opts [Integer] :page_size The maximum number of devices to return in the response. If this value is zero, the service will select a default size. 
  # @option opts [String] :field_mask The fields of the Device resource to be returned to the response. The fields id and numId are always returned, along with any other fields specified. A comma-separated list of fully qualified names of fields. Example: 
  # @option opts [Boolean] :sort_by_client_online Set to true to return devices sorted by last heartbeat 
  # @option opts [Array<String>] :device_ids A list of device string IDs. For example, [&#39;device0&#39;, &#39;device12&#39;]. If empty, this field is ignored. Maximum IDs: 10,000
  # @option opts [Array<String>] :device_num_ids A list of device numeric IDs. If empty, this field is ignored. Maximum IDs: 10,000.
  # @option opts [String] :gateway_list_options_associations_device_id If set, returns only the gateways with which the specified device is associated. The device ID can be numeric (num_id) or the user-defined string (id). For example, if 456 is specified, returns only the gateways to which the device with num_id 456 is bound.
  # @option opts [String] :gateway_list_options_associations_gateway_id If set, only devices associated with the specified gateway are returned. The gateway ID can be numeric (num_id) or the user-defined string (id). For example, if 123 is specified, only devices bound to the gateway with num_id 123 are returned
  # @option opts [String] :gateway_list_options_gateway_type If GATEWAY is specified, only gateways are returned. If NON_GATEWAY is specified, only non-gateway devices are returned. If GATEWAY_TYPE_UNSPECIFIED is specified, all devices are returned.
  # @return [ListDevicesOnlineResponse]
  describe 'get_subscription_devices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_command_to_device
  # Send A Command To A Device
  # @param subscriptionid Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param command application/json
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'send_command_to_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for un_bind_device
  # UnBind  a device from a gateway under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param unbind application/json
  # @param [Hash] opts the optional parameters
  # @return [Info]
  describe 'un_bind_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for un_bind_devices
  # UnBind devices from a gateway under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param unbind application/json
  # @param [Hash] opts the optional parameters
  # @return [Info]
  describe 'un_bind_devices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_configuration_to_device
  # Update A Configuration Of A Device
  # @param subscriptionid Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param configuration application/json
  # @param [Hash] opts the optional parameters
  # @return [DeviceConfig]
  describe 'update_configuration_to_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_custom_onboard_request
  # Approve/Reject a Custom Onboard Request
  # @param subscriptionid Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param custom_onboard application/json
  # @param [Hash] opts the optional parameters
  # @return [Info]
  describe 'update_custom_onboard_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_device
  # Modify device under a registry
  # @param subscription_id Subscription ID
  # @param registry_id Registry ID
  # @param device_id Device ID
  # @param update_mask Required. Only updates the device fields indicated by this mask. The field mask must not be empty, and it must not contain fields that are immutable or only set by the server. Mutable top-level fields: credentials,logLevel, blocked,policy and metadata
  # @param device application/json
  # @param [Hash] opts the optional parameters
  # @return [Device]
  describe 'update_device test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
