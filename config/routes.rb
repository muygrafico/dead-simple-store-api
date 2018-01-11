Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  # get 'publications', to: 'publications#index'
  resources :publications
  resources :photos
end
