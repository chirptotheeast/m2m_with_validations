Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get '/', to: 'static#home', as: 'home'
 get '/about', to: 'static#about'

#  get '/beaches', to: 'beaches#index'
#  get '/beaches/:id', to: 'beaches#show', as: 'beach'

resources :visitors
resources :beaches

end
