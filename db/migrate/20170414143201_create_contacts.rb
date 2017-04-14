class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.text :name
      t.string :email
      t.text :message
      t.integer :user_id

      t.timestamps
    end

    add_index :contacts, :user_id
  end
end
