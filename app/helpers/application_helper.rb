module ApplicationHelper
  def full_time_as_format time
    return "" if time.blank?
    l time, format: "%Y/%m/%d %H:%M:%S"
  end

  def date_as_format date
    return "" if date.blank?
    l date, format: "%Y-%m-%d"
  end

  def student_status
    [["tempotary", "tempotary"], ["quit", "quit"], ["finish", "finish"]]
  end

  def day_in_week
     [["monday", "monday"], ["tuesday", "tuesday"], ["wednesay", "wednesay"],
       ["thursday", "thursday"], ["friday", "friday"], ["saturday", "saturday"], ["sunday", "sunday"]]
  end
end
