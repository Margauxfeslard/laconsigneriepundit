class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :contenu
      t.integer :note
      t.references :user, foreign_key: true
      t.references :biere, foreign_key: true

      t.timestamps
    end
  end
end
