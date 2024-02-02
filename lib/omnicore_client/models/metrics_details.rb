=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.10
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'date'
require 'time'

module OmniCoreClient
  class MetricsDetails
    attr_accessor :no_of_messages_for30_minutes

    attr_accessor :no_of_messages_for48_hours

    attr_accessor :billable_bytes_received

    attr_accessor :billable_bytes_sent

    attr_accessor :billable_message_size

    attr_accessor :bytes_received

    attr_accessor :bytes_sent

    attr_accessor :message_size

    attr_accessor :no_of_ack_messages

    attr_accessor :no_of_command_messages

    attr_accessor :no_of_config_messages

    attr_accessor :no_of_device_connections_failed

    attr_accessor :no_of_devices

    attr_accessor :no_of_dis_connections

    attr_accessor :no_of_event_messages

    attr_accessor :no_of_gateway_connections_failed

    attr_accessor :no_of_gateways

    attr_accessor :no_of_loop_back_messages

    attr_accessor :no_of_messages

    attr_accessor :no_of_publish_errors

    attr_accessor :no_of_registries

    attr_accessor :no_of_state_messages

    attr_accessor :no_of_subscribe

    attr_accessor :no_of_successful_connections

    attr_accessor :no_of_un_subscribe

    attr_accessor :subscription_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'no_of_messages_for30_minutes' => :'NoOfMessagesFor30Minutes',
        :'no_of_messages_for48_hours' => :'NoOfMessagesFor48Hours',
        :'billable_bytes_received' => :'billableBytesReceived',
        :'billable_bytes_sent' => :'billableBytesSent',
        :'billable_message_size' => :'billableMessageSize',
        :'bytes_received' => :'bytesReceived',
        :'bytes_sent' => :'bytesSent',
        :'message_size' => :'messageSize',
        :'no_of_ack_messages' => :'noOfAckMessages',
        :'no_of_command_messages' => :'noOfCommandMessages',
        :'no_of_config_messages' => :'noOfConfigMessages',
        :'no_of_device_connections_failed' => :'noOfDeviceConnectionsFailed',
        :'no_of_devices' => :'noOfDevices',
        :'no_of_dis_connections' => :'noOfDisConnections',
        :'no_of_event_messages' => :'noOfEventMessages',
        :'no_of_gateway_connections_failed' => :'noOfGatewayConnectionsFailed',
        :'no_of_gateways' => :'noOfGateways',
        :'no_of_loop_back_messages' => :'noOfLoopBackMessages',
        :'no_of_messages' => :'noOfMessages',
        :'no_of_publish_errors' => :'noOfPublishErrors',
        :'no_of_registries' => :'noOfRegistries',
        :'no_of_state_messages' => :'noOfStateMessages',
        :'no_of_subscribe' => :'noOfSubscribe',
        :'no_of_successful_connections' => :'noOfSuccessfulConnections',
        :'no_of_un_subscribe' => :'noOfUnSubscribe',
        :'subscription_id' => :'subscriptionId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'no_of_messages_for30_minutes' => :'Array<Object>',
        :'no_of_messages_for48_hours' => :'Array<Object>',
        :'billable_bytes_received' => :'Integer',
        :'billable_bytes_sent' => :'Integer',
        :'billable_message_size' => :'Integer',
        :'bytes_received' => :'Integer',
        :'bytes_sent' => :'Integer',
        :'message_size' => :'Integer',
        :'no_of_ack_messages' => :'Integer',
        :'no_of_command_messages' => :'Integer',
        :'no_of_config_messages' => :'Integer',
        :'no_of_device_connections_failed' => :'Integer',
        :'no_of_devices' => :'Integer',
        :'no_of_dis_connections' => :'Integer',
        :'no_of_event_messages' => :'Integer',
        :'no_of_gateway_connections_failed' => :'Integer',
        :'no_of_gateways' => :'Integer',
        :'no_of_loop_back_messages' => :'Integer',
        :'no_of_messages' => :'Integer',
        :'no_of_publish_errors' => :'Integer',
        :'no_of_registries' => :'Integer',
        :'no_of_state_messages' => :'Integer',
        :'no_of_subscribe' => :'Integer',
        :'no_of_successful_connections' => :'Integer',
        :'no_of_un_subscribe' => :'Integer',
        :'subscription_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OmniCoreClient::MetricsDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OmniCoreClient::MetricsDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'no_of_messages_for30_minutes')
        if (value = attributes[:'no_of_messages_for30_minutes']).is_a?(Array)
          self.no_of_messages_for30_minutes = value
        end
      end

      if attributes.key?(:'no_of_messages_for48_hours')
        if (value = attributes[:'no_of_messages_for48_hours']).is_a?(Array)
          self.no_of_messages_for48_hours = value
        end
      end

      if attributes.key?(:'billable_bytes_received')
        self.billable_bytes_received = attributes[:'billable_bytes_received']
      end

      if attributes.key?(:'billable_bytes_sent')
        self.billable_bytes_sent = attributes[:'billable_bytes_sent']
      end

      if attributes.key?(:'billable_message_size')
        self.billable_message_size = attributes[:'billable_message_size']
      end

      if attributes.key?(:'bytes_received')
        self.bytes_received = attributes[:'bytes_received']
      end

      if attributes.key?(:'bytes_sent')
        self.bytes_sent = attributes[:'bytes_sent']
      end

      if attributes.key?(:'message_size')
        self.message_size = attributes[:'message_size']
      end

      if attributes.key?(:'no_of_ack_messages')
        self.no_of_ack_messages = attributes[:'no_of_ack_messages']
      end

      if attributes.key?(:'no_of_command_messages')
        self.no_of_command_messages = attributes[:'no_of_command_messages']
      end

      if attributes.key?(:'no_of_config_messages')
        self.no_of_config_messages = attributes[:'no_of_config_messages']
      end

      if attributes.key?(:'no_of_device_connections_failed')
        self.no_of_device_connections_failed = attributes[:'no_of_device_connections_failed']
      end

      if attributes.key?(:'no_of_devices')
        self.no_of_devices = attributes[:'no_of_devices']
      end

      if attributes.key?(:'no_of_dis_connections')
        self.no_of_dis_connections = attributes[:'no_of_dis_connections']
      end

      if attributes.key?(:'no_of_event_messages')
        self.no_of_event_messages = attributes[:'no_of_event_messages']
      end

      if attributes.key?(:'no_of_gateway_connections_failed')
        self.no_of_gateway_connections_failed = attributes[:'no_of_gateway_connections_failed']
      end

      if attributes.key?(:'no_of_gateways')
        self.no_of_gateways = attributes[:'no_of_gateways']
      end

      if attributes.key?(:'no_of_loop_back_messages')
        self.no_of_loop_back_messages = attributes[:'no_of_loop_back_messages']
      end

      if attributes.key?(:'no_of_messages')
        self.no_of_messages = attributes[:'no_of_messages']
      end

      if attributes.key?(:'no_of_publish_errors')
        self.no_of_publish_errors = attributes[:'no_of_publish_errors']
      end

      if attributes.key?(:'no_of_registries')
        self.no_of_registries = attributes[:'no_of_registries']
      end

      if attributes.key?(:'no_of_state_messages')
        self.no_of_state_messages = attributes[:'no_of_state_messages']
      end

      if attributes.key?(:'no_of_subscribe')
        self.no_of_subscribe = attributes[:'no_of_subscribe']
      end

      if attributes.key?(:'no_of_successful_connections')
        self.no_of_successful_connections = attributes[:'no_of_successful_connections']
      end

      if attributes.key?(:'no_of_un_subscribe')
        self.no_of_un_subscribe = attributes[:'no_of_un_subscribe']
      end

      if attributes.key?(:'subscription_id')
        self.subscription_id = attributes[:'subscription_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          no_of_messages_for30_minutes == o.no_of_messages_for30_minutes &&
          no_of_messages_for48_hours == o.no_of_messages_for48_hours &&
          billable_bytes_received == o.billable_bytes_received &&
          billable_bytes_sent == o.billable_bytes_sent &&
          billable_message_size == o.billable_message_size &&
          bytes_received == o.bytes_received &&
          bytes_sent == o.bytes_sent &&
          message_size == o.message_size &&
          no_of_ack_messages == o.no_of_ack_messages &&
          no_of_command_messages == o.no_of_command_messages &&
          no_of_config_messages == o.no_of_config_messages &&
          no_of_device_connections_failed == o.no_of_device_connections_failed &&
          no_of_devices == o.no_of_devices &&
          no_of_dis_connections == o.no_of_dis_connections &&
          no_of_event_messages == o.no_of_event_messages &&
          no_of_gateway_connections_failed == o.no_of_gateway_connections_failed &&
          no_of_gateways == o.no_of_gateways &&
          no_of_loop_back_messages == o.no_of_loop_back_messages &&
          no_of_messages == o.no_of_messages &&
          no_of_publish_errors == o.no_of_publish_errors &&
          no_of_registries == o.no_of_registries &&
          no_of_state_messages == o.no_of_state_messages &&
          no_of_subscribe == o.no_of_subscribe &&
          no_of_successful_connections == o.no_of_successful_connections &&
          no_of_un_subscribe == o.no_of_un_subscribe &&
          subscription_id == o.subscription_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [no_of_messages_for30_minutes, no_of_messages_for48_hours, billable_bytes_received, billable_bytes_sent, billable_message_size, bytes_received, bytes_sent, message_size, no_of_ack_messages, no_of_command_messages, no_of_config_messages, no_of_device_connections_failed, no_of_devices, no_of_dis_connections, no_of_event_messages, no_of_gateway_connections_failed, no_of_gateways, no_of_loop_back_messages, no_of_messages, no_of_publish_errors, no_of_registries, no_of_state_messages, no_of_subscribe, no_of_successful_connections, no_of_un_subscribe, subscription_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OmniCoreClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
