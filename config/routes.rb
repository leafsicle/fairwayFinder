Rails.application.routes.draw do
  namespace :admin do
    root to: "/admin/courses#index"
    resources :holes
    resources :courses
    resources :users
    resources :scorecards
  end 
end
