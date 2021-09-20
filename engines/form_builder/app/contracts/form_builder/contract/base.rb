# require 'dry/logic'
# require 'dry/logic/predicates'
require 'dry/validation'

Dry::Validation.load_extensions(:predicates_as_macros)

module FormBuilder
  module Contract
    class Base < Dry::Validation::Contract
      # include Dry::Logic
      import_predicates_as_macros
    end
  end
end