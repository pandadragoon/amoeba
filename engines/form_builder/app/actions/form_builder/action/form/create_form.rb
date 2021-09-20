# frozen_string_literal: true

module FormBuilder
  module Action
    module Form
      # Service to get a new form
      class CreateForm < FormBuilder::Action::Form::Base

        def call
          repository.create(attrs)
        end
      end
    end
  end
end
