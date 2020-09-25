class Place < ApplicationRecord
  paginates_per 5

  belongs_to :user
  has_many :comments
  has_many :photos
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: {in: 1..35}
  validates :address, :description, presence: true, length: {in: 6..100}
  validates :description, presence: true
end
