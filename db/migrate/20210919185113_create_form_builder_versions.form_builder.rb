# This migration comes from form_builder (originally 20210912235517)
class CreateFormBuilderVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :form_builder_versions, id: :uuid do |t|
      t.string :type
      t.string :status
      t.json :metadata
      t.uuid :identifier, default: 'gen_random_uuid()', null: false
      t.uuid :resource_id
      t.uuid :document
      t.references :form_builder_form, type: :uuid

      t.timestamps
    end
  end
end
