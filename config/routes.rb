Rails.application.routes.draw do
  root to: 'trips#index'
  devise_for :users
  resources :trips do
    resources :events do
      resources :notes
    end
  end
   resources :users, only: [:show,:edit, :update] do
     resources :avatars, only: [:create]
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
