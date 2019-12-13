class MoviesController < ApplicationController
  before_action :new_tmdb, only: [:show, :search]

  def show
    @movie = @tmdb.show_movie(params[:id])
  end

  def search
    @upcoming_movies = @tmdb.search_movie(params[:query])
    render 'home/index'
  end
end
