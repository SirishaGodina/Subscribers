Rails.application.routes.draw do
  get 'subscribers/index'
  get 'subscribers/new'
  post 'subscribers/create'
  post 'subscribers/login'
  get 'subscribers/welcome'
  get 'subscribers/login_form' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
