Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # verb '/path_to_visit', to: 'controller_name#action', as: :prefix

  # SEE ALL
  get '/restaurants', to: 'restaurants#index', as: :restaurants

  # Receive the form submission
  post '/restaurants', to: 'restaurants#create'

  # Display the form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant

  # SEE ONE
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # DESTROY
  delete '/restaurants/:id', to: 'restaurants#destroy'

  # receive the form
  patch '/restaurants/:id', to: 'restaurants#update'

  # Display the form
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant

  # resources :restaurants, only: [:index]
end
