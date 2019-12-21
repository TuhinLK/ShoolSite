class ClassCreate < ApplicationRecord
	belongs_to :school 
	has_many :students
	has_many :subjects
	validates :class_name ,:school_id, presence: true
	
end
