Rails.application.routes.draw do
  namespace :admin do
    root to: "/courses#index"
    resources :holes
    resources :courses
    resources :users
    resources :scorecards
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
