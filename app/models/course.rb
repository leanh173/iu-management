class Course < ApplicationRecord
  def name_level
    name + " - " + level
  end
end
