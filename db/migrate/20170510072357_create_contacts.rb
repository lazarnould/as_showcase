class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.text :descritpion

      t.timestamps null: false
    end
  end
end
