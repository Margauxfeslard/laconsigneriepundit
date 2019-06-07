class AddNomAndPrenomToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
  end
end
