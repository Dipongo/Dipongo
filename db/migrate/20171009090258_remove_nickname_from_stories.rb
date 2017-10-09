class RemoveNicknameFromStories < ActiveRecord::Migration[5.1]
  def change
    remove_column :stories, :nickname, :string
  end
end
