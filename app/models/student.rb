class Student < ApplicationRecord
  belongs_to :class_create
  has_many :school 

  has_many :parent_students,dependent: :destroy

  has_many :parents , through: :parent_students  

  validates :first_name,:last_name,:phone_number,:email,:address ,:class_create_id , presence: true

  accepts_nested_attributes_for :parent_students

  def fullname
    "#{first_name} #{last_name}"
  end
end
