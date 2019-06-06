class RemoveMaltEtHoublonFromBieres < ActiveRecord::Migration[5.2]
  def change
    remove_column :bieres, :taux_houblon
    remove_column :bieres, :taux_malt
  end
end
