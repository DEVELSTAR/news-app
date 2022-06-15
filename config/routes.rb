Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'

# /posts/1/comments/4
  resources :magazines do
    resources :comments
  end
 
   root "magazines#index"
   get 'about', to: 'news#about'
end