class AddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :address, :string
    add_column :pieces, :marker_type, :string
  end
end
