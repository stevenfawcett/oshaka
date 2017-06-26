Rails.application.routes.draw do


  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    'settings/index'
  get    'new_connection',      to: 'settings#new'
  get    'collaborations',      to: 'collaborations#index'
  get    'collaborations/:id' , to: 'collaborations#show', as: 'collaboration'
      
  resources :users do
    member do
    end
  end

#  resources :account_activations, only: [:edit]
   resources :password_resets,     only: [:new, :create, :edit, :update]
   resources :projects,            only: [:new, :create, :edit, :update , :index , :show]

end

