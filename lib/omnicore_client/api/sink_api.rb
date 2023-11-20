=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.3
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'cgi'

module OmniCoreClient
  class SinkApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Sink
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @option opts [Sink] :sink 
    # @return [Sink]
    def create_sink(subscription_id, opts = {})
      data, _status_code, _headers = create_sink_with_http_info(subscription_id, opts)
      data
    end

    # Create a Sink
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @option opts [Sink] :sink 
    # @return [Array<(Sink, Integer, Hash)>] Sink data, response status code and response headers
    def create_sink_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SinkApi.create_sink ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SinkApi.create_sink"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/sinks'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'sink'])

      # return_type
      return_type = opts[:debug_return_type] || 'Sink'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SinkApi.create_sink",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SinkApi#create_sink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Sink
    # @param subscription_id [String] Subscription ID
    # @param sink_id [String] Sink ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_sink(subscription_id, sink_id, opts = {})
      data, _status_code, _headers = delete_sink_with_http_info(subscription_id, sink_id, opts)
      data
    end

    # Delete a Sink
    # @param subscription_id [String] Subscription ID
    # @param sink_id [String] Sink ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_sink_with_http_info(subscription_id, sink_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SinkApi.delete_sink ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SinkApi.delete_sink"
      end
      # verify the required parameter 'sink_id' is set
      if @api_client.config.client_side_validation && sink_id.nil?
        fail ArgumentError, "Missing the required parameter 'sink_id' when calling SinkApi.delete_sink"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/sinks/{sinkId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'sinkId' + '}', CGI.escape(sink_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SinkApi.delete_sink",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SinkApi#delete_sink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get A Sink
    # @param subscription_id [String] Subscription ID
    # @param sink_id [String] Sink ID
    # @param [Hash] opts the optional parameters
    # @return [Sink]
    def get_a_sink(subscription_id, sink_id, opts = {})
      data, _status_code, _headers = get_a_sink_with_http_info(subscription_id, sink_id, opts)
      data
    end

    # Get A Sink
    # @param subscription_id [String] Subscription ID
    # @param sink_id [String] Sink ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Sink, Integer, Hash)>] Sink data, response status code and response headers
    def get_a_sink_with_http_info(subscription_id, sink_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SinkApi.get_a_sink ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SinkApi.get_a_sink"
      end
      # verify the required parameter 'sink_id' is set
      if @api_client.config.client_side_validation && sink_id.nil?
        fail ArgumentError, "Missing the required parameter 'sink_id' when calling SinkApi.get_a_sink"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/sinks/{sinkId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'sinkId' + '}', CGI.escape(sink_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Sink'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SinkApi.get_a_sink",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SinkApi#get_a_sink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get All Sinks
    # Get Sinks
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [ListSinks]
    def get_sinks(subscription_id, opts = {})
      data, _status_code, _headers = get_sinks_with_http_info(subscription_id, opts)
      data
    end

    # Get All Sinks
    # Get Sinks
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListSinks, Integer, Hash)>] ListSinks data, response status code and response headers
    def get_sinks_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SinkApi.get_sinks ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SinkApi.get_sinks"
      end
      # resource path
      local_var_path = '/omnicore/subscriptions/{subscriptionId}/sinks'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListSinks'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SinkApi.get_sinks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SinkApi#get_sinks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
