class Teacher < ApplicationRecord
	has_one :subject ,dependent: :destroy


	validates :first_name,:last_name,:phone_number,:email,:address , presence: true
	def fullname
		"#{first_name} #{last_name}"
	end
end
