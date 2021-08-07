Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user do
        resources :appointments
      end

      post '/login', to: 'user#login'
      get '/autho_login', to: 'user#auto_login'

      resources :coaches do
        resources :appointments
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
