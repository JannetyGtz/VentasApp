class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :phone
<<<<<<< HEAD
      t.string :estado
=======
      t.string :status
>>>>>>> jannety
      t.timestamps null: false
    end
  end
end
