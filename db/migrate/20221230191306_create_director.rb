class CreateDirector < ActiveRecord::Migration[7.0]
  def change
    create_table :directors do |t|
      t.string :name
      t.references :country, null: false, foreign_key: true
      t.datetime :birthdate
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
