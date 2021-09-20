module FormBuilder
  class Section < ApplicationRecord
    belongs_to :form_builder_form, class_name: 'FormBuilder::Form'
  end
end
