class Breed < ApplicationRecord
  serialize :images, Array
  validates :name, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :images, presence: true
end 
