Rails.application.routes.draw do
  namespace :api do
    get "/courses/index", to: "courses#index"
    get "/courses/search", to: "courses#search"
  end

  namespace :admin do
    resources :courses do
      resources :scorecards
      resources :holes
    end
  end

  root to: "admin/courses#index"

  devise_for :users, controllers: { sessions: "users/sessions",
                                    omniauth_callbacks: "users/omniauth_callbacks", registrations: "users/registrations" }

  if Rails.env.production?
    CLIENT_HTML = FILE.read(Rails.root.join("public/index.html"))
    get "*path", to: proc { [200, {}, [CLIENT_HTML]] }
  end
end
