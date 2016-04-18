Rails.application.routes.draw do
  get 'stations/index'

  root 'welcome#index'
  get '/search', to: "search#index"
end
