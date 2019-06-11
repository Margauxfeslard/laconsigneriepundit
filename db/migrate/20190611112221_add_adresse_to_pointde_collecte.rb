class AddAdresseToPointdeCollecte < ActiveRecord::Migration[5.2]
  def change
    add_column :pointcollectes, :ville, :string
    add_column :pointcollectes, :zipcode, :integer
    add_column :pointcollectes, :adresse, :string
  end
end
