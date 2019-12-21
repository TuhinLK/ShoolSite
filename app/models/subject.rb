class Subject < ApplicationRecord
  belongs_to :teacher
  belongs_to :class_create, optional: true
  validates :subject_name , :teacher_id ,:class_create_id, presence: true
end
