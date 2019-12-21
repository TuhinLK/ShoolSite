class CreateClassCreates < ActiveRecord::Migration[5.0]
  def change
    create_table :class_creates do |t|
      t.string :class_name

      t.timestamps
    end
  end
end
