module FormBuilder
  module Struct
    # FormBuilder::Form struct
    class Form < FormBuilder::Struct::Base
      attribute? :title, Types::String.default(''.freeze)
      attribute? :description, Types::String.default(''.freeze)
      attribute? :metadata, Types::JSON::Hash.optional.default({}.freeze)
      attribute? :modifiers, Types::JSON::Hash.optional.default({}.freeze)
      attribute? :identifier, Types::String.default(''.freeze)
      attribute? :created_by_id, Types::String.default(''.freeze)
      attribute? :updated_by_id, Types::String.default(''.freeze)
      attribute? :created_at, Types::String.default(''.freeze)
      attribute? :updated_at, Types::String.default(''.freeze)
    end
  end
end