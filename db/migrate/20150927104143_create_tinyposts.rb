class CreateTinyposts < ActiveRecord::Migration
  def change
    create_table :tinyposts do |t|
      t.text :content
      t.integer :userID

      t.timestamps null: false
    end
  end
end
