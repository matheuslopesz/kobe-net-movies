# frozen_string_literal: true

module MovieHelper
  def format_runtime(runtime)
  rescue StandardError
    hours = runtime / 60
    rest = runtime % 60
    "#{hours}h #{rest}min"
  end

  def format_average(average)
    'not rated yet' if average.zero?
    average
  end
end
