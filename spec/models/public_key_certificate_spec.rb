=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.6
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OmniCoreClient::PublicKeyCertificate
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OmniCoreClient::PublicKeyCertificate do
  let(:instance) { OmniCoreClient::PublicKeyCertificate.new }

  describe 'test an instance of PublicKeyCertificate' do
    it 'should create an instance of PublicKeyCertificate' do
      expect(instance).to be_instance_of(OmniCoreClient::PublicKeyCertificate)
    end
  end
  describe 'test attribute "certificate"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "format"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["X509_CERTIFICATE_PEM"])
      # validator.allowable_values.each do |value|
      #   expect { instance.format = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "x509_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
