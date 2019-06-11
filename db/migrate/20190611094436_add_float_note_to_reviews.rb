class AddFloatNoteToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :note, :float
  end
end
