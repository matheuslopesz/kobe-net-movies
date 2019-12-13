# frozen_string_literal: true

class Tmdb
  include HTTParty

  # Just a small disclaimer, the best approach would be use a .env
  # but a have no time for this right now !
  TOKEN = 'c5850ed73901b8d268d0898a8a9d8bff'

  BASE_URL = 'https://api.themoviedb.org'

  API_VERSION = '3'

  def upcoming_movies
    response = self.class.get("#{BASE_URL}/#{API_VERSION}/movie/upcoming?api_key=#{TOKEN}")
    response.parsed_response
  end

  def show_movie(movie_id)
    response = self.class.get("#{BASE_URL}/#{API_VERSION}/movie/#{movie_id}?api_key=#{TOKEN}")
    response.parsed_response
  end

end
