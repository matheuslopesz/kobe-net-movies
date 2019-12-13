module HomeHelper
  def format_release_date(date)
    l date.to_date, format: :long 
  end

  def color_average(average)
    case
    when average <= 6.9
      'bad-score'
    when average.between?(7.0, 7.9)
      'average-score'
    when average > 7.0
      'good-score'
    end
  end
end
