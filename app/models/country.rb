class Country < ApplicationRecord
  has_many :movies, class_name: "movie", foreign_key: "country_id"
  has_many :directors, class_name: "director", foreign_key: "country_id"
end
