Rails.application.routes.draw do
  namespace :admin do
    resources :holes
    resources :courses
    resources :users
    resources :scorecards
    root to: "/admin/courses#index"
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
