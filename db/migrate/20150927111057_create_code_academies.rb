class CreateCodeAcademies < ActiveRecord::Migration
  def change
    create_table :code_academies do |t|
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
