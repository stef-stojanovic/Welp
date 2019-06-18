Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers, :foods, :orders, :restaurants, :reviews

get '/', to: 'customers#login_form'

post 'customers/authenticate', to: 'customers#authenticate'

get '/logout', to: 'customers#log_out'



end
