# frozen_string_literal: true

module HomeHelper
  def format_release_date(date)
  rescue StandardError
    l date.to_date, format: :long
  end

  def color_average(average)
    if average.zero?
      'no-score'
    elsif average.between?(7.0, 7.9)
      'average-score'
    elsif average > 7.0
      'good-score'
    elsif average <= 6.9
      'bad-score'
    end
  end
end
