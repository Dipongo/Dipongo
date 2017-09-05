class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :name
      t.integer :position
      t.references :universe, foreign_key: true

      t.timestamps
    end
  end
end
