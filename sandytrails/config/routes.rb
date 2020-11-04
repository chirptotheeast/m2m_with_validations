Rails.application.routes.draw do

  get 'trips/new'
  get 'trips/create'
  get 'trips/edit'
  get 'trips/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get '/', to: 'static#home', as: 'home'
 get '/about', to: 'static#about'

#  get '/beaches', to: 'beaches#index'
#  get '/beaches/:id', to: 'beaches#show', as: 'beach'
get 'beaches/open', to: 'beaches#open', as: 'open'
resources :visitors
resources :beaches
resources :trips, only: [:new, :create, :edit, :update]

end
