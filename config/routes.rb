Rails.application.routes.draw do
  resources :users
  get "/grab-feed", to: "rss#grab_feed"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
