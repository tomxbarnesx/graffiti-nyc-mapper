class AddArtisttoPiece < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :artist, :string
  end
end
