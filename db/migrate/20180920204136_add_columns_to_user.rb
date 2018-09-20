class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :birthdate, :date
    add_column :users, :bio, :string
    add_column :users, :username, :string
  end
end
