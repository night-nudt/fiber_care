class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :department
      t.string :password_salt
      t.string :password_hash
      t.text :remark
      t.integer :created_by
      t.integer :updated_by

      t.timestamps null: false
    end
  end
end
