class RenameColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :pieces, :latitude, :lat
    rename_column :pieces, :longitude, :lng
  end
end
