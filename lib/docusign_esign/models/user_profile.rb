=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign

  class UserProfile
    attr_accessor :address

    # These properties cannot be modified in the PUT.   Indicates the authentication methods used by the user.
    attr_accessor :authentication_methods

    # The name of the user's Company.
    attr_accessor :company_name

    #  When set to **true**, the user's company and title information are shown on the ID card. 
    attr_accessor :display_organization_info

    # When set to **true**, the user's Address and Phone number are shown on the ID card.
    attr_accessor :display_personal_info

    # When set to **true**, the user's ID card can be viewed from signed documents and envelope history.
    attr_accessor :display_profile

    # When set to **true**, the user's usage information is shown on the ID card.
    attr_accessor :display_usage_history

    # 
    attr_accessor :profile_image_uri

    # 
    attr_accessor :title

    attr_accessor :usage_history

    attr_accessor :user_details

    # 
    attr_accessor :user_profile_last_modified_date


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address' => :'address',
        :'authentication_methods' => :'authenticationMethods',
        :'company_name' => :'companyName',
        :'display_organization_info' => :'displayOrganizationInfo',
        :'display_personal_info' => :'displayPersonalInfo',
        :'display_profile' => :'displayProfile',
        :'display_usage_history' => :'displayUsageHistory',
        :'profile_image_uri' => :'profileImageUri',
        :'title' => :'title',
        :'usage_history' => :'usageHistory',
        :'user_details' => :'userDetails',
        :'user_profile_last_modified_date' => :'userProfileLastModifiedDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address' => :'AddressInformationV2',
        :'authentication_methods' => :'Array<AuthenticationMethod>',
        :'company_name' => :'String',
        :'display_organization_info' => :'String',
        :'display_personal_info' => :'String',
        :'display_profile' => :'String',
        :'display_usage_history' => :'String',
        :'profile_image_uri' => :'String',
        :'title' => :'String',
        :'usage_history' => :'UsageHistory',
        :'user_details' => :'UserInformation',
        :'user_profile_last_modified_date' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'authenticationMethods')
        if (value = attributes[:'authenticationMethods']).is_a?(Array)
          self.authentication_methods = value
        end
      end

      if attributes.has_key?(:'companyName')
        self.company_name = attributes[:'companyName']
      end

      if attributes.has_key?(:'displayOrganizationInfo')
        self.display_organization_info = attributes[:'displayOrganizationInfo']
      end

      if attributes.has_key?(:'displayPersonalInfo')
        self.display_personal_info = attributes[:'displayPersonalInfo']
      end

      if attributes.has_key?(:'displayProfile')
        self.display_profile = attributes[:'displayProfile']
      end

      if attributes.has_key?(:'displayUsageHistory')
        self.display_usage_history = attributes[:'displayUsageHistory']
      end

      if attributes.has_key?(:'profileImageUri')
        self.profile_image_uri = attributes[:'profileImageUri']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'usageHistory')
        self.usage_history = attributes[:'usageHistory']
      end

      if attributes.has_key?(:'userDetails')
        self.user_details = attributes[:'userDetails']
      end

      if attributes.has_key?(:'userProfileLastModifiedDate')
        self.user_profile_last_modified_date = attributes[:'userProfileLastModifiedDate']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address == o.address &&
          authentication_methods == o.authentication_methods &&
          company_name == o.company_name &&
          display_organization_info == o.display_organization_info &&
          display_personal_info == o.display_personal_info &&
          display_profile == o.display_profile &&
          display_usage_history == o.display_usage_history &&
          profile_image_uri == o.profile_image_uri &&
          title == o.title &&
          usage_history == o.usage_history &&
          user_details == o.user_details &&
          user_profile_last_modified_date == o.user_profile_last_modified_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address, authentication_methods, company_name, display_organization_info, display_personal_info, display_profile, display_usage_history, profile_image_uri, title, usage_history, user_details, user_profile_last_modified_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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