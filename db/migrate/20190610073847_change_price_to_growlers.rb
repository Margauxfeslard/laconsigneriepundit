class ChangePriceToGrowlers < ActiveRecord::Migration[5.2]
  def change
    remove_column :growlers, :price_cents_cents
    add_monetize :growlers, :price, currency: { present: false }
  end
end
