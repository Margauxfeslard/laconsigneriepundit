class AddAmertumeToBieres < ActiveRecord::Migration[5.2]
  def change
    add_column :bieres, :amertume, :integer
  end
end
