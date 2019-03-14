Rails.application.routes.draw do
  root 'home#index'

  get '/home/trend', to: 'home#trend', as: 'trend'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
