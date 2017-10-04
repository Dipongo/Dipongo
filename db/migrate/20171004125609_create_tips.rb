class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.text :content
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
