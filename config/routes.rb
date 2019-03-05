Rails.application.routes.draw do
  root 'static_pages#home'

  get 'app_pages/app'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
