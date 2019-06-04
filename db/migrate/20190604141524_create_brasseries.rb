class CreateBrasseries < ActiveRecord::Migration[5.2]
  def change
    create_table :brasseries do |t|
      t.string :nom
      t.string :adresse
      t.string :logo_img
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
