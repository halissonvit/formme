class CreatePooleAppForms < ActiveRecord::Migration
  def change
    create_table :poole_app_forms do |t|
      t.string :title
      t.string :api_key
      t.string :api_secret

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
