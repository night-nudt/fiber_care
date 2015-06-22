class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :serial_number
      t.string :name
      t.string :category
      t.string :factor
      t.text :symptom
      t.text :incidence
      t.text :situation
      t.text :disposal
      t.text :remark

      t.timestamps null: false
    end
  end
end
