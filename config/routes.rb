Rails.application.routes.draw do

  resources :authors
  resources :novels
  resources :genres

  get "about" => "site#about"

  get "/search(.:format)" => "search#index", as: :search

  root "site#home"

end
