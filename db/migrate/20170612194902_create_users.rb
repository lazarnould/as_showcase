class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
