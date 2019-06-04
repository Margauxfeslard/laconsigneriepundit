class CreateCommandes < ActiveRecord::Migration[5.2]
  def change
    create_table :commandes do |t|
      t.integer :etat
      t.date :date_souhaitee
      t.references :pointcollecte, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
