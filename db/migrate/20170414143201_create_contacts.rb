class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.text :name
      t.string :email
      t.text :message
      t.integer :user
      t.timestamps
    end

    add_index :contacts, :user
  end
end
