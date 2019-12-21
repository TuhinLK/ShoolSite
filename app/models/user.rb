class User < ApplicationRecord
	belongs_to :school
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  accepts_nested_attributes_for :school
  validates :first_name,:last_name, presence: true

  def with_school
  	build_school if school.nil?
  	self
  end



  def fullname
		"#{first_name} #{last_name}"
  end
end
