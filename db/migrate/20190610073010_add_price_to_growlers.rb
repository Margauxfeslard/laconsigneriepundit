class AddPriceToGrowlers < ActiveRecord::Migration[5.2]
  def change
    add_monetize :growlers, :price_cents, currency: { present: false }
    remove_column :growlers, :prix
  end
end
