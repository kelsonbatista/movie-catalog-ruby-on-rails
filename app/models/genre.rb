class Genre < ApplicationRecord
  has_many :movies, class_name: "movie", foreign_key: "genre_id"
end
