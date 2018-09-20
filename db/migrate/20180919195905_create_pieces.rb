class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :title
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
