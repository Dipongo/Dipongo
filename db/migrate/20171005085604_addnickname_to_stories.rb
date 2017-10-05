class AddnicknameToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :nickname, :string
  end
end
