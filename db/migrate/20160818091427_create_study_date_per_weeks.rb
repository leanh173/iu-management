class CreateStudyDatePerWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :study_date_per_weeks do |t|
      t.references :study_course, foreign_key: true
      t.string :study_at_day
      t.string :time_study

      t.timestamps
    end
  end
end
