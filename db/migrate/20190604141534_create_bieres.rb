class CreateBieres < ActiveRecord::Migration[5.2]
  def change
    create_table :bieres do |t|
      t.string :nom
      t.string :logo_img
      t.text :description
      t.string :type
      t.string :couleur
      t.float :taux_alcool
      t.float :taux_houblon
      t.float :taux_malt
      t.float :prix_par_litre
      t.references :brasserie, foreign_key: true

      t.timestamps
    end
  end
end
