class AddNicknameToUniverses < ActiveRecord::Migration[5.1]
  def change
    add_column :universes, :nickname, :string
  end
end
