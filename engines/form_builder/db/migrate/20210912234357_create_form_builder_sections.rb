class CreateFormBuilderSections < ActiveRecord::Migration[6.1]
  def change
    create_table :form_builder_sections, id: :uuid do |t|
      t.string :title
      t.string :description
      t.json :metadata
      t.json :modifiers
      t.uuid :identifier, default: 'gen_random_uuid()', null: false
      t.references :form_builder_form, type: :uuid

      t.timestamps
    end
  end
end
