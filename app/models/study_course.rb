class StudyCourse < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  belongs_to :course
  has_many :study_date_per_weeks
  has_many :study_dates

  accepts_nested_attributes_for :study_date_per_weeks
end
