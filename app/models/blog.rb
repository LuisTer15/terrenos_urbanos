class Blog < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true
	validates :description, presence: true
end
