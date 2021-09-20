# This migration comes from form_builder (originally 20210912235859)
class CreateFormBuilderOrgs < ActiveRecord::Migration[6.1]
  def change
    create_table :form_builder_orgs, id: :uuid do |t|
      t.string :name
      t.json :metadata
      t.uuid :identifier, default: 'gen_random_uuid()', null: false

      t.timestamps
    end
  end
end
