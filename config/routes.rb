Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  resources :art_crafts, only: [:show] do
    resources :comments
    resources :favorites, only: [:create, :destroy]
    get 'search', on: :collection
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
