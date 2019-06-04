class CreatePointcollectes < ActiveRecord::Migration[5.2]
  def change
    create_table :pointcollectes do |t|
      t.string :nom
      t.string :ville
      t.integer :code_postal
      t.string :adresse
      t.text :horaire

      t.timestamps
    end
  end
end
