Rails.application.routes.draw do
  get '/' => 'home#top'
  resources :art_crafts, only: [:show]
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
