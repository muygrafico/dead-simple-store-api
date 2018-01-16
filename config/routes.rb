Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :publications
  resources :comments, except: [:index]
  resources :photos, except: [:index]
end
