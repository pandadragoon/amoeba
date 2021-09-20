# This migration comes from form_builder (originally 20210912234538)
class CreateFormBuilderQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :form_builder_questions, id: :uuid do |t|
      t.string :title
      t.string :description
      t.json :metadata
      t.json :modifiers
      t.string :type
      t.uuid :identifier, default: 'gen_random_uuid()', null: false
      t.references :form_builder_section, type: :uuid

      t.timestamps
    end
  end
end
