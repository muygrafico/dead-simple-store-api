Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :publications do
        resources :comments, except: [:index]
        resources :photos, except: [:index]
      end

      post 'authenticate', to: 'authentication#authenticate'

    end
  end

end
