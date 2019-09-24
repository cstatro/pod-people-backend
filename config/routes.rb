Rails.application.routes.draw do
  resources :podcast_list_joins
  resources :followers
  resources :episode_list_joins
  resources :episodes
  resources :lists
  resources :podcasts
  resources :users
  get "/grab-feed", to: "rss#grab_feed"
  post "/login", to: "auth#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
