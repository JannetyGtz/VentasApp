class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.float :total
      t.text :comment
      t.timestamps null: false
      t.references :store
      t.references :user
    end
  end
end
