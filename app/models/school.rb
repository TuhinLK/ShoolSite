class School < ApplicationRecord
  has_one :user 
  has_many :class_creates
  has_many :students, through: :class_creates
  validates :school_name,:address , presence: true
end
