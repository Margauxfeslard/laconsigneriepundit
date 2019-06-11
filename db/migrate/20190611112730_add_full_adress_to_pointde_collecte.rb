class AddFullAdressToPointdeCollecte < ActiveRecord::Migration[5.2]
  def change
    add_column :pointcollectes, :full_address, :string
  end
end
