Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      resources :custom_charts, only: [:index, :create, :show]
      resources :data_sets, only: [:index, :create, :show]
      resources :users, only: [:create]
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end

end
