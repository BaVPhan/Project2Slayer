Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'heros#index'

  resources :heros do
    resources :monsters, except: [:index, :show]
  end

  resources :monsters
  resources :users
  resource :session
end
