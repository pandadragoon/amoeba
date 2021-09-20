module FormBuilder
  class Form < ApplicationRecord
    attribute :title, :string
    attribute :description, :string
    attribute :metadata, :json
    attribute :modifiers, :json
    attribute :identifier, :uuid
    attribute :created_by_id, :uuid
    attribute :updated_by_id, :uuid

    has_many :form_builder_sections, class_name: 'FormBuilder::Section'
  end
end
