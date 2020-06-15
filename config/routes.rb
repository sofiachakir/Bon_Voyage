Rails.application.routes.draw do
  get 'pictures/create'
  root to: 'trips#index'
  devise_for :users
  resources :trips do
    resources :pictures, only: [:create]
    resources :events do
      resources :notes do
        resources :images, only: [:create]
      end
    end
  end

   resources :users, only: [:show,:edit, :update] do
     resources :avatars, only: [:create]
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
