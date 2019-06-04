class CreateCommandeitems < ActiveRecord::Migration[5.2]
  def change
    create_table :commandeitems do |t|
      t.integer :quantite
      t.float :prix
      t.references :commande, foreign_key: true
      t.references :item, polymorphic: true

      t.timestamps
    end
  end
end
