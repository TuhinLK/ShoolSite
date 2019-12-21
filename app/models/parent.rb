class Parent < ApplicationRecord
	has_many :parent_students , dependent: :destroy 

	has_many :students , through: :parent_students
	validates :first_name,:last_name,:phone_number,:email,:address , presence: true
	def fullname
		"#{first_name} #{last_name}"
	end
end
