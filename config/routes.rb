Rails.application.routes.draw do
  namespace :api do
    root to: "courses#index"
    get 'courses/index'
  end
  namespace :admin do
    resources :holes
    resources :courses
    resources :users
    resources :scorecards
  end 
end
