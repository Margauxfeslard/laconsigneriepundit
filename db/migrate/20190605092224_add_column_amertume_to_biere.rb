class AddColumnAmertumeToBiere < ActiveRecord::Migration[5.2]
  def change
    add_column :bieres, :taux_amertume, :float
  end
end
