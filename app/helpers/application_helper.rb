module ApplicationHelper
  def full_time_as_format time
    return "" if time.blank?
    l time, format: "%Y/%m/%d %H:%M:%S"
  end

  def student_status
    [["tempotary", "tempotary"], ["quit", "quit"], ["finish", "finish"]]
  end
end
