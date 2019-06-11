class RemoveAdresseFromPointdeCollecte < ActiveRecord::Migration[5.2]
  def change
    remove_column :pointcollectes, :ville
    remove_column :pointcollectes, :zipcode
    remove_column :pointcollectes, :adresse
  end
end
