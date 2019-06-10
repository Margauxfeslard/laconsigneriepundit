class AddPriceToCommandeitems < ActiveRecord::Migration[5.2]
  def change
    add_monetize :commandeitems, :price_cents, currency: { present: false }
    remove_column :commandeitems, :prix
  end
end
