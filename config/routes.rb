Rails.application.routes.draw do
  root to: "static_pages#home"
  resources :courses do
    resources :holes
    resources :scorecards
  end
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # scope "/scorecards/:scorecard_id" do
  #   resources :hole_performances
  # end

  # namespace :api do
  #   get "/courses/index", to: "courses#index"
  #   get "/courses/search", to: "courses#search"
  # end

  if Rails.env.production?
    CLIENT_HTML = FILE.read(Rails.root.join("public/index.html"))
    get "*path", to: proc { [200, {}, [CLIENT_HTML]] }
  end
end
