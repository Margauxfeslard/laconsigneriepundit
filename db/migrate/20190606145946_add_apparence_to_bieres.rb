class AddApparenceToBieres < ActiveRecord::Migration[5.2]
  def change
    add_column :bieres, :apparence, :string
  end
end
