Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#home'
  get '/health_check' => 'pages#health_check'
  resources :posts do
    resources :comments
  end

end
