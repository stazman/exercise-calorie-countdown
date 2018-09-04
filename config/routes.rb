Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'countdowns#index'

  resources :countdowns
  resources :ex_cals

  # resources :countdowns do
  #   resources :ex_cals, only: [:index, :show]
  # end
end
