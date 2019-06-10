class ChangePriceToCommandeitems < ActiveRecord::Migration[5.2]
  def change
    remove_column :commandeitems, :price_cents_cents
    add_monetize :commandeitems, :price, currency: { present: false }
  end
end
