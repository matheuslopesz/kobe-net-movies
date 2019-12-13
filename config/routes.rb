Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: 'home#index'
  resources :movies, only: :show
  post 'movies/search', to: 'movies#search', as: "search_movie_by_query"
end
