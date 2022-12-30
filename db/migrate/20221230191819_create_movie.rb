class CreateMovie < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text :synopsis
      t.references :country, null: false, foreign_key: true
      t.integer :duration
      t.references :director, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.integer :released
      t.integer :status
      t.text :image

      t.timestamps
    end
  end
end
