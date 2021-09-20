# frozen_string_literal: true

require 'dry-struct'
require 'dry-types'

module FormBuilder
  module Struct
    Dry::Types.load_extensions(:maybe)

    module Types
      include Dry.Types()
    end

    class Base < Dry::Struct
      transform_keys(&:to_sym)
      transform_types do |type|
        if type.default?
          type.constructor do |value|
            value.nil? ? Dry::Types::Undefined : value
          end
        else
          type
        end
      end

    end
  end
end
