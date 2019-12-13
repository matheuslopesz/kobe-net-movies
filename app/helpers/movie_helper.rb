module MovieHelper
  def format_runtime(runtime)
    rescue nil
    hours = runtime / 60
    rest = runtime % 60
    "#{hours}h #{rest}min"
  end
end
