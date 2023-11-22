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

# Unit tests for OmniCoreClient::VaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VaultApi' do
  before do
    # run before each test
    @api_instance = OmniCoreClient::VaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VaultApi' do
    it 'should create an instance of VaultApi' do
      expect(@api_instance).to be_instance_of(OmniCoreClient::VaultApi)
    end
  end

  # unit tests for create_vault_configuration
  # create vault configuration
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateConfiguration] :create_configuration application/json
  # @return [Frame]
  describe 'create_vault_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_vault_key
  # Create Vault Key
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [CreateVaultKeyBody] :create_vault_key_body application/json
  # @return [Frame]
  describe 'create_vault_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_configuration
  # Delete Configuration
  # @param subscriptionid Subscription ID
  # @param configid config id
  # @param [Hash] opts the optional parameters
  # @return [Frame]
  describe 'delete_configuration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_vault_key
  # Delete Vault Key
  # @param subscriptionid Subscription ID
  # @param keyid key id
  # @param [Hash] opts the optional parameters
  # @return [Frame]
  describe 'delete_vault_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_exports
  # Get Exports
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [GetExportsResponse]
  describe 'get_exports test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_registry_data
  # Get vault folder data
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [FolderData]
  describe 'get_registry_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_replays
  # Get Replays
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [GetReplaysResponse]
  describe 'get_replays test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vault_audit
  # Get vault Audit
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_number Page Number
  # @option opts [Integer] :page_size Page Size
  # @return [AuditResult]
  describe 'get_vault_audit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vault_configurations
  # Get vault configurations
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [Configurations]
  describe 'get_vault_configurations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vault_files
  # Get vault files
  # @param subscriptionid Subscription ID
  # @param registryid registry ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :file_type file type
  # @return [FileDetails]
  describe 'get_vault_files test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vault_keys
  # Get Vault Keys
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [GetKeysResponse]
  describe 'get_vault_keys test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vault_metrics
  # Get vault metrics
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start_time start time
  # @option opts [String] :end_time end time
  # @return [MetricsResponse]
  describe 'get_vault_metrics test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vault_status
  # Get vault status
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @return [VaultStatus]
  describe 'get_vault_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start_export
  # Start Export
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [StartExportBody] :start_export_body application/json
  # @return [Frame]
  describe 'start_export test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start_replay
  # Start Replay
  # @param subscriptionid Subscription ID
  # @param [Hash] opts the optional parameters
  # @option opts [ReplayBody] :replay_body application/json
  # @return [String]
  describe 'start_replay test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
