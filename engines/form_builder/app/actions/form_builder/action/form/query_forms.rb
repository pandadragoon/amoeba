# frozen_string_literal: true

module FormBuilder
  module Action
    module Form
      # Action to find FormBuilder::Form data
      class QueryForms < FormBuilder::Action::Form::Base
        def call
          return repository.all if attrs.nil?

          return repository.find_one(attrs) if attrs.instance_of?(String)

          repository.find_all(attrs)
        end
      end
    end
  end
end
