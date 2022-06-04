Rails.application.routes.draw do
  resources :magazines
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
   root "magazines#index"
   get 'about', to: 'news#about'
end
