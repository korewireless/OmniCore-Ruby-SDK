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

# Unit tests for OmniCoreClient::MetricsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MetricsApi' do
  before do
    # run before each test
    @api_instance = OmniCoreClient::MetricsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetricsApi' do
    it 'should create an instance of MetricsApi' do
      expect(@api_instance).to be_instance_of(OmniCoreClient::MetricsApi)
    end
  end

  # unit tests for get_metrics
  # get metrics
  # @param subscription_id Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [Metrics]
  describe 'get_metrics test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
