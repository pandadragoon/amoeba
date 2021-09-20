# frozen_string_literal: true

module FormBuilder
  module Action
    module Form
      # Service to get a new form
      class NewForm < FormBuilder::Action::Form::Base
        def call
          repository.new_entity(attrs)
        end
      end
    end
  end
end
