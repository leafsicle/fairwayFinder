Rails.application.routes.draw do
  namespace :api do
    get "/courses/index", to: "courses#index"
    get "/courses/search", to: "courses#search"
  end

  namespace :admin do
    root to: "courses#index"
    resources :courses do
      resources :scorecards
      resources :holes
    end
    devise_for :users, controllers: {
                         omniauth_callbacks: "users/omniauth_callbacks",
                         sessions: "users/sessions",
                         registrations: "users/registrations",
                         passwords: "users/passwords",
                         confirmations: "users/confirmations",
                         unlocks: "users/unlocks",
                       }
  end

  if Rails.env.production?
    CLIENT_HTML = FILE.read(Rails.root.join("public/index.html"))
    get "*path", to: proc { [200, {}, [CLIENT_HTML]] }
  end
end
