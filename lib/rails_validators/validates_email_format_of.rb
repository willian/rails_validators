# Source: https://github.com/fnando/validators
module ActiveModel
  module Validations
    class EmailValidator < EachValidator
      def validate_each(record, attribute, value)
        if value.to_s !~ RailsValidators::Constants::EMAIL_REGEX
          record.errors.add(
            attribute, :invalid_email,
            :message => options[:message], :value => value
          )
        end
      end
    end

    module ClassMethods
      # Validates whether or not the specified e-mail address is valid.
      #
      #   class User < ActiveRecord::Base
      #     validates_email_format_of :email
      #   end
      #
      def validates_email_format_of(*attr_names)
        validates_with EmailValidator, _merge_attributes(attr_names)
      end

      alias_method :validates_email, :validates_email_format_of
    end
  end
end
