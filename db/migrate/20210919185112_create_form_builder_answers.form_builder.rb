# This migration comes from form_builder (originally 20210912234934)
class CreateFormBuilderAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :form_builder_answers, id: :uuid do |t|
      t.string :label
      t.json :value
      t.string :type
      t.json :metadata
      t.json :modifiers
      t.uuid :identifier, default: 'gen_random_uuid()', null: false
      t.references :form_builder_question, type: :uuid

      t.timestamps
    end
  end
end
