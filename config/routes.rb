Rails.application.routes.draw do
  devise_for :users
  get '/' => 'home#top'
  resources :art_crafts, only: [:show] do
    resources :comments
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
