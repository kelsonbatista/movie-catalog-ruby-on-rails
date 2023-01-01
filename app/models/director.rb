class Director < ApplicationRecord
  has_many :movies
  belongs_to :genre
  belongs_to :country
end