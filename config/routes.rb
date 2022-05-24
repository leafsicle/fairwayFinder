Rails.application.routes.draw do
  namespace :api do
    get '/courses/', to:"courses#index"
    
  end
  namespace :admin do
    resources :users 
    resources :courses do
      resources :scorecards
      resources :holes
    end
  end 

  if Rails.env.production?
    CLIENT_HTML = FILE.read(Rails.root.join('public/index.html'))
    get "*path", to:proc {[200,{},[CLIENT_HTML]]} 
  end
end
