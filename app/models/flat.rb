class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, :img_path,  presence: true
end
