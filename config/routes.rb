Rails.application.routes.draw do
  root 'static_pages#home'

  get '/app_landing', to: 'static_pages#app_landing', as: 'app_landing'
  get '/project', to: 'static_pages#project', as: 'project'

  get '/app_pages/app'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #resources :users, only: [:new, :create]
  resources :lots
  #get '/lots', to: 'lots#index'
  #get '/lots/new', to: 'lots#new', as: 'new_lot'
  #post '/lots', to: 'lots#create'
  #get '/lots/:id', to: 'lots#show', as: 'lot'
  #get '/lots/:id/edit', to: 'lots#edit', as: 'edit_lot'
  #patch '/lots/:id', to: 'lots#update'
  #delete '/lots/:id', to: 'lots#destroy'
end