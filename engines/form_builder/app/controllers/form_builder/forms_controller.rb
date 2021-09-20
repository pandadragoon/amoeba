# frozen_string_literal: true

require_dependency 'form_builder/application_controller'

module FormBuilder
  # Controller for FormBuilder:Forms
  class FormsController < ApplicationController
    def index
      render json: FormBuilder::Action::Form::QueryForms.call(nil)
    end

    def show
      render json: FormBuilder::Action::Form::QueryForms.call(params[:id])
    end

    def new
      render json: FormBuilder::Action::Form::NewForm.call(nil)
    end

    def create
      success = ->(form) { render json: form }
      error = ->(errors) { render json: errors }

      FormBuilder::UseCase::CreateForm.call(form_params, { success: success, error: error })
    end

    def find
      render json: FormBuilder::Action::Form::QueryForms.call(form_params)
    end

    private

    def form_params
      params.require(:form_builder_form).permit(:title, :description, :created_by_id, :updated_by_id, :metadata,
                                                 :modifiers)
    end
  end
end
