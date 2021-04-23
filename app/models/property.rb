class Property < ApplicationRecord
	validates :code, presence: true
	validates :price, presence: true
	validates :location, presence: true
	validates :address, presence: true
	validates :area_land, presence: true
	validates :area_build, presence: true
	validates :property_type, presence: true
end
