Rails.application.routes.draw do
  namespace :api do
    get 'courses/index'
  end
  namespace :admin do
    root to: "/admin/courses#index"
    resources :holes
    resources :courses
    resources :users
    resources :scorecards
  end 
end
