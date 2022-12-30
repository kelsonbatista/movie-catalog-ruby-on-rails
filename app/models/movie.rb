class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :genre
  belongs_to :country
end
