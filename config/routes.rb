Rails.application.routes.draw do
  root 'static_pages#home'

  get '/app_landing', to: 'static_pages#app_landing', as: 'app_landing'
  get '/propiedades', to: 'static_pages#properties_landing', as: 'properties_landing'
  get '/projects', to: 'static_pages#projects', as: 'projects'
  get '/projects/casalagunamar', to: 'static_pages#project1', as: 'project1'
  get '/projects/casapatio', to: 'static_pages#project2', as: 'project2'

  get '/app_pages/app'

  get '/login', to: 'sessions#new', as: 'new_session'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #resources :users, only: [:new, :create]
  resources :leads, except: [:new]
  get '/propiedades/pivijay', to: 'leads#new', as: 'properties_pivijay'
  resources :properties do
    member do
      delete :delete_image_attachment
    end
  end
  resources :lots
  #get '/lots', to: 'lots#index'
  #get '/lots/new', to: 'lots#new', as: 'new_lot'
  #post '/lots', to: 'lots#create'
  #get '/lots/:id', to: 'lots#show', as: 'lot'
  #get '/lots/:id/edit', to: 'lots#edit', as: 'edit_lot'
  #patch '/lots/:id', to: 'lots#update'
  #delete '/lots/:id', to: 'lots#destroy'

  resources :blogs
  get '/blog/posts', to: 'blogs#posts', as: 'blog_posts'
end