Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root                'pages#home'
  get 'auth/vkontakte/callback', to:  'auth#create'
  get '/create', to: 'auth#create'
end
