module ApplicationHelper
  
  Time::DATE_FORMATS[:human_short] = lambda { |time| time.strftime("%-d de %b") }
  
  def readable_date(date)
    if !date.nil?
      date.to_formatted_s :human_short
    else
      "No date available"
    end
  end
  
end
