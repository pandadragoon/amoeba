# This migration comes from form_builder (originally 20210912231207)
class EnableUuid < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto'
  end
end
