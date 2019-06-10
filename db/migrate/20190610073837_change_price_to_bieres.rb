class ChangePriceToBieres < ActiveRecord::Migration[5.2]
  def change
    remove_column :bieres, :price_cents_cents
    add_monetize :bieres, :price, currency: { present: false }
  end
end
