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
  get "/authenticate", to: "auth#authenticate"
  get "/search", to: "lists#search"
  delete "/podcast_list_joins/:list_id/:podcast_id", to: "podcast_list_joins#delete_from_list"
  delete "/episode_list_joins/:list_id/:episode_id", to: "episode_list_joins#delete_from_list"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
