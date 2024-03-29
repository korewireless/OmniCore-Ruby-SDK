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
require 'date'

# Unit tests for OmniCoreClient::GatewayConfig
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OmniCoreClient::GatewayConfig do
  let(:instance) { OmniCoreClient::GatewayConfig.new }

  describe 'test an instance of GatewayConfig' do
    it 'should create an instance of GatewayConfig' do
      expect(instance).to be_instance_of(OmniCoreClient::GatewayConfig)
    end
  end
  describe 'test attribute "gateway_auth_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["GATEWAY_AUTH_METHOD_UNSPECIFIED", "ASSOCIATION_ONLY", "DEVICE_AUTH_TOKEN_ONLY", "ASSOCIATION_AND_DEVICE_AUTH_TOKEN"])
      # validator.allowable_values.each do |value|
      #   expect { instance.gateway_auth_method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "gateway_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NON_GATEWAY", "GATEWAY"])
      # validator.allowable_values.each do |value|
      #   expect { instance.gateway_type = value }.not_to raise_error
      # end
    end
  end

end
