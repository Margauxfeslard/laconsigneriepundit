class AddEchangeToCommandeitems < ActiveRecord::Migration[5.2]
  def change
    add_column :commandeitems, :echange1L, :integer
    add_column :commandeitems, :echange2L, :integer
  end
end
