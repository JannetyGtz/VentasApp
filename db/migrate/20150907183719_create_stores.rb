class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.timestamps null: false
    end
  end
end
