class Movie < ApplicationRecord
  enum release: { not_released: 0, released: 1 }
  enum status: { draft: 0, published: 1 }
  belongs_to :director
  belongs_to :genre
  belongs_to :country
  mount_uploader :image, CoverUploader
end