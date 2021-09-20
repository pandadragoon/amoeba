class AddUserRefsToTables < ActiveRecord::Migration[6.1]
  def change
    %i[form_builder_forms form_builder_sections form_builder_templates form_builder_questions form_builder_answers form_builder_versions].each do |table|
      add_reference table, :created_by, type: :uuid, foreign_key: { to_table: :form_builder_users }
      add_reference table, :updated_by, type: :uuid, foreign_key: { to_table: :form_builder_users }
    end

    add_reference :form_builder_sections, :form_builder_template, type: :uuid
  end
end
