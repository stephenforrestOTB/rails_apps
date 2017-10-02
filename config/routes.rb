Rails.application.routes.draw do
  resources :pages
  resources :posts do
    resources :comments
  end
  resources :users, except: [:new, :create]
  get "/generate", to: "posts#generate"
  root "pages#main"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
