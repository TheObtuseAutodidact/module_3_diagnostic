Rails.application.routes.draw do
  # resources :stations, only: [:index]

  root 'welcome#index'
  get '/search', to: "search#index"
end
