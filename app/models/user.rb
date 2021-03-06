class User < ApplicationRecord
	has_secure_password validations: false

	validates :email, uniqueness: true, format: /@/
	validates :password, presence: true, on: :create
	validates :password, length: { in: 6..20 }
	validates :name, presence: true
end
