class CreateStudyCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :study_courses do |t|
      t.references :teacher, foreign_key: true
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
