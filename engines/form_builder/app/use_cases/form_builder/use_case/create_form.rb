# frozen_string_literal: true

module FormBuilder
  module UseCase
    # Use case to create and validate a FormBuilder::Form
    class CreateForm < FormBuilder::UseCase::Base
      def self.call(
        attrs,
        callbacks,
        contract = FormBuilder::Contract::FormContract.new,
        actions = { create_form: FormBuilder::Action::Form::CreateForm }
      )
        new(attrs, callbacks, contract, actions).call
      end

      def call
        errors = validate(attrs)
        return validation_error(errors) if errors

        form = actions[:create_form].call(attrs)
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
