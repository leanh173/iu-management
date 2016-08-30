class AddStartAtToStudyCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :study_courses, :start_at, :date
  end
end
