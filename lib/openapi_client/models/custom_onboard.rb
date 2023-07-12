=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.1
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

require 'date'
require 'time'

module OpenapiClient
  class CustomOnboard
    attr_accessor :id

    attr_accessor :name

    attr_accessor :num_id

    attr_accessor :parent

    attr_accessor :registry

    attr_accessor :blocked

    attr_accessor :capresent

    attr_accessor :subscription

    attr_accessor :created_on

    attr_accessor :updated_on

    attr_accessor :credentials

    attr_accessor :gateway

    attr_accessor :gateway_config

    attr_accessor :is_gateway

    attr_accessor :device_errors

    attr_accessor :client_online

    attr_accessor :last_config_ack_time

    attr_accessor :last_config_send_time

    attr_accessor :last_error_status

    attr_accessor :last_error_time

    attr_accessor :last_event_time

    attr_accessor :last_heartbeat_time

    attr_accessor :last_state_time

    attr_accessor :log_level

    attr_accessor :metadata

    attr_accessor :config

    attr_accessor :state

    attr_accessor :policy

    attr_accessor :custom_onboard_data

    attr_accessor :is_approve

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'num_id' => :'numId',
        :'parent' => :'parent',
        :'registry' => :'registry',
        :'blocked' => :'blocked',
        :'capresent' => :'capresent',
        :'subscription' => :'subscription',
        :'created_on' => :'createdOn',
        :'updated_on' => :'updatedOn',
        :'credentials' => :'credentials',
        :'gateway' => :'gateway',
        :'gateway_config' => :'gatewayConfig',
        :'is_gateway' => :'isGateway',
        :'device_errors' => :'deviceErrors',
        :'client_online' => :'clientOnline',
        :'last_config_ack_time' => :'lastConfigAckTime',
        :'last_config_send_time' => :'lastConfigSendTime',
        :'last_error_status' => :'lastErrorStatus',
        :'last_error_time' => :'lastErrorTime',
        :'last_event_time' => :'lastEventTime',
        :'last_heartbeat_time' => :'lastHeartbeatTime',
        :'last_state_time' => :'lastStateTime',
        :'log_level' => :'logLevel',
        :'metadata' => :'metadata',
        :'config' => :'config',
        :'state' => :'state',
        :'policy' => :'policy',
        :'custom_onboard_data' => :'customOnboardData',
        :'is_approve' => :'isApprove'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'num_id' => :'String',
        :'parent' => :'String',
        :'registry' => :'String',
        :'blocked' => :'Boolean',
        :'capresent' => :'Boolean',
        :'subscription' => :'String',
        :'created_on' => :'String',
        :'updated_on' => :'String',
        :'credentials' => :'Array<DeviceCredential>',
        :'gateway' => :'Array<String>',
        :'gateway_config' => :'GatewayConfig',
        :'is_gateway' => :'Boolean',
        :'device_errors' => :'String',
        :'client_online' => :'Boolean',
        :'last_config_ack_time' => :'String',
        :'last_config_send_time' => :'String',
        :'last_error_status' => :'ErrorStatus',
        :'last_error_time' => :'String',
        :'last_event_time' => :'String',
        :'last_heartbeat_time' => :'String',
        :'last_state_time' => :'String',
        :'log_level' => :'LogLevel',
        :'metadata' => :'Hash<String, String>',
        :'config' => :'DeviceConfig',
        :'state' => :'DeviceState',
        :'policy' => :'Policy',
        :'custom_onboard_data' => :'String',
        :'is_approve' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CustomOnboard` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CustomOnboard`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'num_id')
        self.num_id = attributes[:'num_id']
      end

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.key?(:'registry')
        self.registry = attributes[:'registry']
      end

      if attributes.key?(:'blocked')
        self.blocked = attributes[:'blocked']
      end

      if attributes.key?(:'capresent')
        self.capresent = attributes[:'capresent']
      end

      if attributes.key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'updated_on')
        self.updated_on = attributes[:'updated_on']
      end

      if attributes.key?(:'credentials')
        if (value = attributes[:'credentials']).is_a?(Array)
          self.credentials = value
        end
      end

      if attributes.key?(:'gateway')
        if (value = attributes[:'gateway']).is_a?(Array)
          self.gateway = value
        end
      end

      if attributes.key?(:'gateway_config')
        self.gateway_config = attributes[:'gateway_config']
      end

      if attributes.key?(:'is_gateway')
        self.is_gateway = attributes[:'is_gateway']
      end

      if attributes.key?(:'device_errors')
        self.device_errors = attributes[:'device_errors']
      end

      if attributes.key?(:'client_online')
        self.client_online = attributes[:'client_online']
      end

      if attributes.key?(:'last_config_ack_time')
        self.last_config_ack_time = attributes[:'last_config_ack_time']
      end

      if attributes.key?(:'last_config_send_time')
        self.last_config_send_time = attributes[:'last_config_send_time']
      end

      if attributes.key?(:'last_error_status')
        self.last_error_status = attributes[:'last_error_status']
      end

      if attributes.key?(:'last_error_time')
        self.last_error_time = attributes[:'last_error_time']
      end

      if attributes.key?(:'last_event_time')
        self.last_event_time = attributes[:'last_event_time']
      end

      if attributes.key?(:'last_heartbeat_time')
        self.last_heartbeat_time = attributes[:'last_heartbeat_time']
      end

      if attributes.key?(:'last_state_time')
        self.last_state_time = attributes[:'last_state_time']
      end

      if attributes.key?(:'log_level')
        self.log_level = attributes[:'log_level']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'config')
        self.config = attributes[:'config']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'policy')
        self.policy = attributes[:'policy']
      end

      if attributes.key?(:'custom_onboard_data')
        self.custom_onboard_data = attributes[:'custom_onboard_data']
      end

      if attributes.key?(:'is_approve')
        self.is_approve = attributes[:'is_approve']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 256
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 256.')
      end

      if @id.to_s.length < 3
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 256
      return false if @id.to_s.length < 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 256
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 256.'
      end

      if id.to_s.length < 3
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 3.'
      end

      @id = id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          num_id == o.num_id &&
          parent == o.parent &&
          registry == o.registry &&
          blocked == o.blocked &&
          capresent == o.capresent &&
          subscription == o.subscription &&
          created_on == o.created_on &&
          updated_on == o.updated_on &&
          credentials == o.credentials &&
          gateway == o.gateway &&
          gateway_config == o.gateway_config &&
          is_gateway == o.is_gateway &&
          device_errors == o.device_errors &&
          client_online == o.client_online &&
          last_config_ack_time == o.last_config_ack_time &&
          last_config_send_time == o.last_config_send_time &&
          last_error_status == o.last_error_status &&
          last_error_time == o.last_error_time &&
          last_event_time == o.last_event_time &&
          last_heartbeat_time == o.last_heartbeat_time &&
          last_state_time == o.last_state_time &&
          log_level == o.log_level &&
          metadata == o.metadata &&
          config == o.config &&
          state == o.state &&
          policy == o.policy &&
          custom_onboard_data == o.custom_onboard_data &&
          is_approve == o.is_approve
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, num_id, parent, registry, blocked, capresent, subscription, created_on, updated_on, credentials, gateway, gateway_config, is_gateway, device_errors, client_online, last_config_ack_time, last_config_send_time, last_error_status, last_error_time, last_event_time, last_heartbeat_time, last_state_time, log_level, metadata, config, state, policy, custom_onboard_data, is_approve].hash
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
        klass = OpenapiClient.const_get(type)
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
