# This migration comes from form_builder (originally 20210912235816)
class CreateFormBuilderUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :form_builder_users, id: :uuid do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.json :metadata
      t.uuid :identifier, default: 'gen_random_uuid()', null: false

      t.timestamps
    end
  end
end
