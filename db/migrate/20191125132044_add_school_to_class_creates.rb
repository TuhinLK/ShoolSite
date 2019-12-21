class AddSchoolToClassCreates < ActiveRecord::Migration[5.0]
  def change
    add_reference :class_creates, :school, foreign_key: true
  end
end
