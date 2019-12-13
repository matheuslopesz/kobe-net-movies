# frozen_string_literal: true

module MovieHelper
  def format_runtime(runtime)
  rescue StandardError
    hours = runtime / 60
    rest = runtime % 60
    "#{hours}h #{rest}min"
  end
end
