class CreateParentStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :parent_students do |t|
      t.references :parent, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
