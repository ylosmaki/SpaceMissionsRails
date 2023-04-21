Rails.application.routes.draw do
  resources :rockets
  resources :space_agencies
  resources :missions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
