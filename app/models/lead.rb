class Lead < ApplicationRecord
	validates :name_lead, presence: true
	validates :email_lead, presence: true
	validates :phonenumber_lead, presence: true
end
