module HomeHelper
  def format_release_date(date)
    l date.to_date, format: :long 
  end

  def format_genres(genres)
    only_title = []
    genres.each do |genre|
      #onyle_title << genre[]
    end
  end
end
