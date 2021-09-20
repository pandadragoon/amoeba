require 'dry-struct'

module Types
  include Dry.Types()
end

module FormBuilder
  module Struct
    # Validation error message struct
    class ValidationErrorMsg < Dry::Struct
      attribute :message, Types::Strict::String
      attribute :status, Types::Strict::Symbol
      attribute? :fields, Types::Strict::Hash
    end
  end
end