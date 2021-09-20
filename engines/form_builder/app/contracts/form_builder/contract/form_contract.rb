# frozen_string_literal: true
module FormBuilder
  module Contract
    class FormContract < FormBuilder::Contract::Base
      params do
        required(:title).filled(:string)
        required(:description).filled(:string)
        optional(:created_by_id).filled(:string)
        optional(:updated_by_id).filled(:string)
      end

      rule(:created_by_id).validate(:uuid_v4?)
      rule(:updated_by_id).validate(:uuid_v4?)
    end
  end
end
