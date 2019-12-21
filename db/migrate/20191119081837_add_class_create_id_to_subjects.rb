class AddClassCreateIdToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :class_create_id, :integer
  end
end
