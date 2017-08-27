class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :mobil_phone, :string
    add_column :users, :admin, :boolean
  end
end
