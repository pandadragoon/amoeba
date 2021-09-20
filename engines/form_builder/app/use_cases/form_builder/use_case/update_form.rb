# frozen_string_literal: true

module FormBuilder
  module UseCase
    # Update a FormBuilder::Form
    class UpdateForm < FormBuilder::UseCase::Base
      def self.call(
        attrs,
        callbacks,
        contract = FormBuilder::Contract::Form.new,
        actions = { update_form: FormBuilder::Action::UpdateForm }
      )
        new(attrs, callbacks, contract, actions).call
      end

      def call
        errors = validate(attrs)
        return validation_error(errors) if errors

        form = actions[:update_form].call(attrs)
        return action_error unless form

        # TODO: Broadcast form_builder:form_created event
        callbacks[:success].call(form: form)
      end

      private

      def validation_error(errors)
        callbacks[:error].call(
          new_error_msg(message: 'Bad Request', fields: errors, status: :bad_request)
        )
      end

      def action_error
        callbacks[:error].call(
          new_error_msg(message: 'Bad Request', status: :bad_request)
        )
      end
    end
  end
end
