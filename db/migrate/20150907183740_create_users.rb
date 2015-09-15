class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :cellphone
      t.string :role
      t.string :status
      t.timestamps null: false
      t.references :store
    end
  end
end
