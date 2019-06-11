class ChangeCodepostaltoZipcodeInPointdecollecte < ActiveRecord::Migration[5.2]
  def change
    rename_column :pointcollectes, :code_postal, :zipcode
    rename_column :users, :postcode, :zipcode
  end
end
