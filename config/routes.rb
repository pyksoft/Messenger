Rails.application.routes.draw do
  
  # get 'profiles/new'
  # get 'profiles/edit'

  root "conversations#index"
  
  devise_for :users
  
  resources :conversations do
    resources :messages
  end

  resources :profiles, only: [:index, :new, :create, :edit, :update]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
