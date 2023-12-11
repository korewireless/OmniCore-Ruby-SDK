=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.7
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OmniCoreClient::SinkApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SinkApi' do
  before do
    # run before each test
    @api_instance = OmniCoreClient::SinkApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SinkApi' do
    it 'should create an instance of SinkApi' do
      expect(@api_instance).to be_instance_of(OmniCoreClient::SinkApi)
    end
  end

  # unit tests for create_sink
  # Create a Sink
  # @param subscription_id Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [Sink] :sink 
  # @return [Sink]
  describe 'create_sink test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_sink
  # Delete a Sink
  # @param subscription_id Subscription ID
  # @param sink_id Sink ID
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_sink test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_a_sink
  # Get A Sink
  # @param subscription_id Subscription ID
  # @param sink_id Sink ID
  # @param [Hash] opts the optional parameters
  # @return [Sink]
  describe 'get_a_sink test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sinks
  # Get All Sinks
  # Get Sinks
  # @param subscription_id Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [ListSinks]
  describe 'get_sinks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
