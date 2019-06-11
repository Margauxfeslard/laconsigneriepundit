class AddFullAdressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_address, :string
  end
end
