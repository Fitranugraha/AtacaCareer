class CreateFormalEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :formal_educations do |t|
      t.integer :profile_id
      t.string :level
      t.string :institution
      t.date :start_date
      t.date :end_date
      t.string :certification
      t.string :faculty
      t.string :department

      t.timestamps
    end
  end
end
