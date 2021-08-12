Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :bookmarks, only: %i[new create destroy]
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create]
  end
end
