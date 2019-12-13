class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  def new_tmdb
    @tmdb = Tmdb.new
  end
end
