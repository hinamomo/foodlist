Rails.application.routes.draw do
  get 'user_foods/new'

  root to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup' , to: 'users#new'
  get 'edit', to:'users#edit'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :user_foods do
    collection do
      get :middle_item_select
      get :small_item_select
    end
  end
  
  
end