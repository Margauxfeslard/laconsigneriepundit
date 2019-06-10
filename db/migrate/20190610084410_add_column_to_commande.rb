class AddColumnToCommande < ActiveRecord::Migration[5.2]
  def change
    add_column :commandes, :item_sku, :string
    add_monetize :commandes, :amount, currency: { present: false }
    add_column :commandes, :payment, :json
  end
end
