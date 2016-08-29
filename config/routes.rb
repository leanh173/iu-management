Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' },
    path: "", path_names: {sign_in: "sign_in", sign_out: "sign_out"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#index"
  resources :users, only: [:edit, :show, :update, :index]
  resources :teachers
end
