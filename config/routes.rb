Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'hotels#index'

  get 'contacts/new', to: 'contacts#new', as: 'new_contact'
  post 'contacts', to: 'contacts#create'
  get 'contacts/:id', to: 'contacts#show', as: 'contact'

  resources :hotels, :only => [:index, :show] do
    resources :reviews, :except => [:edit, :update, :destroy]
    resources :reservations, :only => [:new, :create, :show]
  end

  resources :prefectures, :only => [:index, :show]

  get 'abouts', to: 'abouts#index'
end
