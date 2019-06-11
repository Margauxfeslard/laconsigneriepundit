class AddCoordinatesToPointCollectes < ActiveRecord::Migration[5.2]
  def change
    add_column :pointcollectes, :latitude, :float
    add_column :pointcollectes, :longitude, :float
  end
end
