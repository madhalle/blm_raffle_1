Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get '/', to: 'welcome#index'

   post '/contestants', to: 'contestants#create'
   get '/contestants/new', to: 'contestants#new'
end