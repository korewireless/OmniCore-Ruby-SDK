=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.1
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'cgi'

module OmniCoreClient
  class MetricsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # get metrics
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [Metrics]
    def get_metrics(subscription_id, opts = {})
      data, _status_code, _headers = get_metrics_with_http_info(subscription_id, opts)
      data
    end

    # get metrics
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Metrics, Integer, Hash)>] Metrics data, response status code and response headers
    def get_metrics_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsApi.get_metrics ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling MetricsApi.get_metrics"
      end
      # resource path
      local_var_path = '/subscriptions/{subscriptionId}/metrics'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Metrics'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MetricsApi.get_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#get_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
