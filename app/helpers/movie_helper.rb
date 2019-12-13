# frozen_string_literal: true

module MovieHelper
  def format_runtime(runtime)
    return if runtime.nil?

    hours = runtime / 60
    rest = runtime % 60
    "#{hours}h #{rest}min"
  end

  def format_average(average)
    return if average.nil?

    'not rated yet' if average.zero?
    average
  end

  def format_release_date(date)
    return if date.nil?

    date&.to_date ? l(date.to_date, format: :long) : 'no date'
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
