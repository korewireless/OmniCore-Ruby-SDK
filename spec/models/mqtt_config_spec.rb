=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.4
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OmniCoreClient::MqttConfig
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OmniCoreClient::MqttConfig do
  let(:instance) { OmniCoreClient::MqttConfig.new }

  describe 'test an instance of MqttConfig' do
    it 'should create an instance of MqttConfig' do
      expect(instance).to be_instance_of(OmniCoreClient::MqttConfig)
    end
  end
  describe 'test attribute "mqtt_enabled_state"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MQTT_ENABLED", "MQTT_DISABLED", "MQTT_STATE_UNSPECIFIED"])
      # validator.allowable_values.each do |value|
      #   expect { instance.mqtt_enabled_state = value }.not_to raise_error
      # end
    end
  end

end
