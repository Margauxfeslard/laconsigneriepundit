class AddIntegerToNoteInReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :note
  end
end
