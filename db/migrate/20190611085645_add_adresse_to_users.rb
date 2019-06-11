class AddAdresseToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :adresse, :string
    add_column :users, :postcode, :integer
    add_column :users, :ville, :string
  end
end
