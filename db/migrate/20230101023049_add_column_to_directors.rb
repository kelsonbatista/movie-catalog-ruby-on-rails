class AddColumnToDirectors < ActiveRecord::Migration[7.0]
  def change
    add_reference :directors, :country, null: true, foreign_key: true
    add_reference :directors, :genre, null: true, foreign_key: true
  end
end
