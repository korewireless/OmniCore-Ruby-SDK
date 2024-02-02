=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.10
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'cgi'

module OmniCoreClient
  class RegistryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a registry
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @option opts [DeviceRegistry] :registry application/json
    # @return [DeviceRegistry]
    def create_registry(subscription_id, opts = {})
      data, _status_code, _headers = create_registry_with_http_info(subscription_id, opts)
      data
    end

    # Create a registry
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @option opts [DeviceRegistry] :registry application/json
    # @return [Array<(DeviceRegistry, Integer, Hash)>] DeviceRegistry data, response status code and response headers
    def create_registry_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistryApi.create_registry ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling RegistryApi.create_registry"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/registries'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'registry'])

      # return_type
      return_type = opts[:debug_return_type] || 'DeviceRegistry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistryApi.create_registry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistryApi#create_registry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a registry
    # @param subscription_id [String] Subscription ID
    # @param registry_id [String] Registry ID
    # @param [Hash] opts the optional parameters
    # @return [Info]
    def delete_registry(subscription_id, registry_id, opts = {})
      data, _status_code, _headers = delete_registry_with_http_info(subscription_id, registry_id, opts)
      data
    end

    # Delete a registry
    # @param subscription_id [String] Subscription ID
    # @param registry_id [String] Registry ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Info, Integer, Hash)>] Info data, response status code and response headers
    def delete_registry_with_http_info(subscription_id, registry_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistryApi.delete_registry ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling RegistryApi.delete_registry"
      end
      # verify the required parameter 'registry_id' is set
      if @api_client.config.client_side_validation && registry_id.nil?
        fail ArgumentError, "Missing the required parameter 'registry_id' when calling RegistryApi.delete_registry"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/registries/{registryId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'registryId' + '}', CGI.escape(registry_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Info'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistryApi.delete_registry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistryApi#delete_registry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all registries under a subscription
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_number Page Number
    # @option opts [Integer] :page_size Page Size
    # @option opts [Array<String>] :registry_ids A list of registry string IDs. For example, [&#39;registry0&#39;, &#39;registry12&#39;]. If empty, this field is ignored. Maximum IDs: 10,000
    # @return [ListDeviceRegistries]
    def get_registries(subscription_id, opts = {})
      data, _status_code, _headers = get_registries_with_http_info(subscription_id, opts)
      data
    end

    # Get all registries under a subscription
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_number Page Number
    # @option opts [Integer] :page_size Page Size
    # @option opts [Array<String>] :registry_ids A list of registry string IDs. For example, [&#39;registry0&#39;, &#39;registry12&#39;]. If empty, this field is ignored. Maximum IDs: 10,000
    # @return [Array<(ListDeviceRegistries, Integer, Hash)>] ListDeviceRegistries data, response status code and response headers
    def get_registries_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistryApi.get_registries ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling RegistryApi.get_registries"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/registries'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pageNumber'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'registryIds'] = @api_client.build_collection_param(opts[:'registry_ids'], :csv) if !opts[:'registry_ids'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListDeviceRegistries'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistryApi.get_registries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistryApi#get_registries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a registry
    # @param subscription_id [String] Subscription ID
    # @param registry_id [String] Registry ID
    # @param [Hash] opts the optional parameters
    # @return [DeviceRegistry]
    def get_registry(subscription_id, registry_id, opts = {})
      data, _status_code, _headers = get_registry_with_http_info(subscription_id, registry_id, opts)
      data
    end

    # Get a registry
    # @param subscription_id [String] Subscription ID
    # @param registry_id [String] Registry ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceRegistry, Integer, Hash)>] DeviceRegistry data, response status code and response headers
    def get_registry_with_http_info(subscription_id, registry_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistryApi.get_registry ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling RegistryApi.get_registry"
      end
      # verify the required parameter 'registry_id' is set
      if @api_client.config.client_side_validation && registry_id.nil?
        fail ArgumentError, "Missing the required parameter 'registry_id' when calling RegistryApi.get_registry"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/registries/{registryId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'registryId' + '}', CGI.escape(registry_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeviceRegistry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistryApi.get_registry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistryApi#get_registry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send  Broadcast To Devices
    # @param subscriptionid [String] Subscription ID
    # @param registry_id [String] Registry ID
    # @param broadcast [DeviceCommand] application/json
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def send_broadcast_to_devices(subscriptionid, registry_id, broadcast, opts = {})
      data, _status_code, _headers = send_broadcast_to_devices_with_http_info(subscriptionid, registry_id, broadcast, opts)
      data
    end

    # Send  Broadcast To Devices
    # @param subscriptionid [String] Subscription ID
    # @param registry_id [String] Registry ID
    # @param broadcast [DeviceCommand] application/json
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def send_broadcast_to_devices_with_http_info(subscriptionid, registry_id, broadcast, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistryApi.send_broadcast_to_devices ...'
      end
      # verify the required parameter 'subscriptionid' is set
      if @api_client.config.client_side_validation && subscriptionid.nil?
        fail ArgumentError, "Missing the required parameter 'subscriptionid' when calling RegistryApi.send_broadcast_to_devices"
      end
      # verify the required parameter 'registry_id' is set
      if @api_client.config.client_side_validation && registry_id.nil?
        fail ArgumentError, "Missing the required parameter 'registry_id' when calling RegistryApi.send_broadcast_to_devices"
      end
      # verify the required parameter 'broadcast' is set
      if @api_client.config.client_side_validation && broadcast.nil?
        fail ArgumentError, "Missing the required parameter 'broadcast' when calling RegistryApi.send_broadcast_to_devices"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionid}/registries/{registryId}/sendBroadcastToDevice'.sub('{' + 'subscriptionid' + '}', CGI.escape(subscriptionid.to_s)).sub('{' + 'registryId' + '}', CGI.escape(registry_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(broadcast)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistryApi.send_broadcast_to_devices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistryApi#send_broadcast_to_devices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a registry
    # @param subscription_id [String] Subscription ID
    # @param registry_id [String] Registry ID
    # @param update_mask [String] values to be updated: eventNotificationConfigs,stateNotificationConfig.pubsub_topic_name,logNotificationConfig.pubsub_topic_name,customOnboardNotificationConfig.pubsub_topic_name,mqttConfig.mqtt_enabled_state,httpConfig.http_enabled_state,logLevel,credentials,customOnboardEnabled
    # @param [Hash] opts the optional parameters
    # @option opts [DeviceRegistry] :registry application/json
    # @return [DeviceRegistry]
    def update_registry(subscription_id, registry_id, update_mask, opts = {})
      data, _status_code, _headers = update_registry_with_http_info(subscription_id, registry_id, update_mask, opts)
      data
    end

    # Update a registry
    # @param subscription_id [String] Subscription ID
    # @param registry_id [String] Registry ID
    # @param update_mask [String] values to be updated: eventNotificationConfigs,stateNotificationConfig.pubsub_topic_name,logNotificationConfig.pubsub_topic_name,customOnboardNotificationConfig.pubsub_topic_name,mqttConfig.mqtt_enabled_state,httpConfig.http_enabled_state,logLevel,credentials,customOnboardEnabled
    # @param [Hash] opts the optional parameters
    # @option opts [DeviceRegistry] :registry application/json
    # @return [Array<(DeviceRegistry, Integer, Hash)>] DeviceRegistry data, response status code and response headers
    def update_registry_with_http_info(subscription_id, registry_id, update_mask, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistryApi.update_registry ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling RegistryApi.update_registry"
      end
      # verify the required parameter 'registry_id' is set
      if @api_client.config.client_side_validation && registry_id.nil?
        fail ArgumentError, "Missing the required parameter 'registry_id' when calling RegistryApi.update_registry"
      end
      # verify the required parameter 'update_mask' is set
      if @api_client.config.client_side_validation && update_mask.nil?
        fail ArgumentError, "Missing the required parameter 'update_mask' when calling RegistryApi.update_registry"
      end
      # verify enum value
      allowable_values = ["eventNotificationConfigs", "stateNotificationConfig.pubsub_topic_name", "logNotificationConfig.pubsub_topic_name", "customOnboardNotificationConfig.pubsub_topic_name", "customOnboardEnabled", "mqttConfig.mqtt_enabled_state", "httpConfig.http_enabled_state", "logLevel", "credentials"]
      if @api_client.config.client_side_validation && !allowable_values.include?(update_mask)
        fail ArgumentError, "invalid value for \"update_mask\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/registries/{registryId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'registryId' + '}', CGI.escape(registry_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'updateMask'] = update_mask

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'registry'])

      # return_type
      return_type = opts[:debug_return_type] || 'DeviceRegistry'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistryApi.update_registry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistryApi#update_registry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
