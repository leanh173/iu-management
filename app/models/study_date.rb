class StudyDate < ApplicationRecord
  belongs_to :study_course
  belongs_to :teacher
end
