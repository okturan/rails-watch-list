class ChangeCommentToTextFromBookmarks < ActiveRecord::Migration[6.0]
  def change
    change_column :bookmarks, :comment, :text
  end
end
