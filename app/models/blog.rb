class Blog < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true
	validates :description, presence: true
	validates :image_path, presence: true
end
