class CreateGrowlers < ActiveRecord::Migration[5.2]
  def change
    create_table :growlers do |t|
      t.integer :capacite
      t.integer :prix

      t.timestamps
    end
  end
end
