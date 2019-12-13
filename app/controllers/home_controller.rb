class HomeController < ApplicationController
  before_action :new_tmdb, only: [:index]
  def index
    @upcoming_movies = @tmdb.upcoming_movies
  end
end
