class CreateStudyDates < ActiveRecord::Migration[5.0]
  def change
    create_table :study_dates do |t|
      t.references :study_course, foreign_key: true
      t.string :status
      t.references :teacher, foreign_key: true
      t.date :study_day
      t.text :note

      t.timestamps
    end
  end
end
