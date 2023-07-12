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
  class DeviceRegistry
    attr_accessor :id

    attr_accessor :name

    attr_accessor :parent

    attr_accessor :created_on

    attr_accessor :updated_on

    attr_accessor :credentials

    attr_accessor :http_config

    attr_accessor :mqtt_config

    attr_accessor :log_level

    attr_accessor :is_nats_route

    attr_accessor :event_notification_configs

    attr_accessor :log_notification_config

    attr_accessor :state_notification_config

    attr_accessor :custom_onboard_notification_config

    attr_accessor :custom_onboard_enabled

    attr_accessor :number_of_devices

    attr_accessor :number_of_gateways

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
        :'parent' => :'parent',
        :'created_on' => :'createdOn',
        :'updated_on' => :'updatedOn',
        :'credentials' => :'credentials',
        :'http_config' => :'httpConfig',
        :'mqtt_config' => :'mqttConfig',
        :'log_level' => :'logLevel',
        :'is_nats_route' => :'isNatsRoute',
        :'event_notification_configs' => :'eventNotificationConfigs',
        :'log_notification_config' => :'logNotificationConfig',
        :'state_notification_config' => :'stateNotificationConfig',
        :'custom_onboard_notification_config' => :'customOnboardNotificationConfig',
        :'custom_onboard_enabled' => :'customOnboardEnabled',
        :'number_of_devices' => :'numberOfDevices',
        :'number_of_gateways' => :'numberOfGateways'
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
        :'parent' => :'String',
        :'created_on' => :'String',
        :'updated_on' => :'String',
        :'credentials' => :'Array<RegistryCredential>',
        :'http_config' => :'HttpConfig',
        :'mqtt_config' => :'MqttConfig',
        :'log_level' => :'LogLevel',
        :'is_nats_route' => :'Boolean',
        :'event_notification_configs' => :'Array<EventNotificationConfig>',
        :'log_notification_config' => :'NotificationConfig',
        :'state_notification_config' => :'NotificationConfig',
        :'custom_onboard_notification_config' => :'NotificationConfig',
        :'custom_onboard_enabled' => :'Boolean',
        :'number_of_devices' => :'Integer',
        :'number_of_gateways' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::DeviceRegistry` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::DeviceRegistry`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
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

      if attributes.key?(:'http_config')
        self.http_config = attributes[:'http_config']
      end

      if attributes.key?(:'mqtt_config')
        self.mqtt_config = attributes[:'mqtt_config']
      end

      if attributes.key?(:'log_level')
        self.log_level = attributes[:'log_level']
      end

      if attributes.key?(:'is_nats_route')
        self.is_nats_route = attributes[:'is_nats_route']
      end

      if attributes.key?(:'event_notification_configs')
        if (value = attributes[:'event_notification_configs']).is_a?(Array)
          self.event_notification_configs = value
        end
      end

      if attributes.key?(:'log_notification_config')
        self.log_notification_config = attributes[:'log_notification_config']
      end

      if attributes.key?(:'state_notification_config')
        self.state_notification_config = attributes[:'state_notification_config']
      end

      if attributes.key?(:'custom_onboard_notification_config')
        self.custom_onboard_notification_config = attributes[:'custom_onboard_notification_config']
      end

      if attributes.key?(:'custom_onboard_enabled')
        self.custom_onboard_enabled = attributes[:'custom_onboard_enabled']
      end

      if attributes.key?(:'number_of_devices')
        self.number_of_devices = attributes[:'number_of_devices']
      end

      if attributes.key?(:'number_of_gateways')
        self.number_of_gateways = attributes[:'number_of_gateways']
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
          parent == o.parent &&
          created_on == o.created_on &&
          updated_on == o.updated_on &&
          credentials == o.credentials &&
          http_config == o.http_config &&
          mqtt_config == o.mqtt_config &&
          log_level == o.log_level &&
          is_nats_route == o.is_nats_route &&
          event_notification_configs == o.event_notification_configs &&
          log_notification_config == o.log_notification_config &&
          state_notification_config == o.state_notification_config &&
          custom_onboard_notification_config == o.custom_onboard_notification_config &&
          custom_onboard_enabled == o.custom_onboard_enabled &&
          number_of_devices == o.number_of_devices &&
          number_of_gateways == o.number_of_gateways
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, parent, created_on, updated_on, credentials, http_config, mqtt_config, log_level, is_nats_route, event_notification_configs, log_notification_config, state_notification_config, custom_onboard_notification_config, custom_onboard_enabled, number_of_devices, number_of_gateways].hash
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
