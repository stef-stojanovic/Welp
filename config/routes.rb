Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers, :foods, :orders, :restaurants, :reviews, :ordered_foods

get '/login', to: 'customers#login_form'
post 'customers/authenticate', to: 'customers#authenticate'

end
