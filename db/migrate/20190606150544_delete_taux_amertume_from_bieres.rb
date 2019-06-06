class DeleteTauxAmertumeFromBieres < ActiveRecord::Migration[5.2]
  def change
    remove_column :bieres, :taux_amertume
  end
end
