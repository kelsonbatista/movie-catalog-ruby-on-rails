class Genre < ApplicationRecord
  has_many :movies, class_name: "movie", foreign_key: "genre_id"
  has_many :directors, class_name: "director", foreign_key: "genre_id"
end
