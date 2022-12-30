class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text :synopsis
      t.string :country
      t.integer :duration
      t.integer :released
      t.integer :status
      t.references :director, null: false, foreign_key: true, default: 0
      t.references :genre, null: false, foreign_key: true, default: 0

      t.timestamps
    end
  end
end
