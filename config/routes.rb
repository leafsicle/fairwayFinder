Rails.application.routes.draw do
  # namespace :admin do
    resources :scorecards
    resources :holes
    resources :courses
  # end 
      resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "courses#index"
end
