class ParentStudent < ApplicationRecord
  belongs_to :parent , optional: true
  belongs_to :student , optional: true
end