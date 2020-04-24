Rails.application.routes.draw do
  root 'static_pages#home'

  get '/app_pages/app'

  get '/lots', to: 'lots#index'
  get '/lots/new', to: 'lots#new', as: 'new_lot'
  post '/lots', to: 'lots#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end