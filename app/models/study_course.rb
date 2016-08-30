class StudyCourse < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  belongs_to :course
  has_many :study_date_per_week
end
