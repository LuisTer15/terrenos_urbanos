Rails.application.routes.draw do
  root 'static_pages#home'

  get '/app_pages/app'

  get '/lots', to: 'lots#index'
  get '/lots/new', to: 'lots#new', as: 'new_lot'
  post '/lots', to: 'lots#create'
  get '/lots/:id', to: 'lots#show', as: 'lot'
  get '/lots/:id/edit', to: 'lots#edit'
  patch '/lots/:id', to: 'lots#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end