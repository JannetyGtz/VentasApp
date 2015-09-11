class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :price
      t.timestamps null: false
      t.references :sale
    end
  end
end
