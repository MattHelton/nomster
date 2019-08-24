class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, :description, presence: true
  geocoded_by :address
  after_validation :geocode
end
