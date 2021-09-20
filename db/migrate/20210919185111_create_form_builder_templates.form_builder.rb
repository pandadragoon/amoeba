# This migration comes from form_builder (originally 20210912234557)
class CreateFormBuilderTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :form_builder_templates, id: :uuid do |t|
      t.string :title
      t.string :description
      t.json :metadata
      t.json :modifiers
      t.uuid :identifier, default: 'gen_random_uuid()', null: false

      t.timestamps
    end
  end
end
