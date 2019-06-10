class AddPriceToBieres < ActiveRecord::Migration[5.2]
  def change
    add_monetize :bieres, :price_cents, currency: { present: false }
    remove_column :bieres, :prix_par_litre
  end
end
