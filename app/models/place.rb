class Place < ApplicationRecord
  paginates_per 5

  belongs_to :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: {in: 1..35}
  validates :address, :description, presence: true
end
