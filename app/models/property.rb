class Property < ApplicationRecord
	has_many_attached :images

	validates :price, presence: true
	validates :address, presence: true
	validates :property_status, presence: true
	validates :property_type, presence: true
	validates :stratus, presence: true
	validates :area_land, presence: true
	validates :area_build, presence: true
	validates :room_count, presence: true
	validates :bathroom_count, presence: true
	validates :description, presence: true
end
