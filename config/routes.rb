Rails.application.routes.draw do
  get 'homes/show'

  resources :workouts do 
    resources :exercises
  end
  root 'workouts#index'
Rails.application.routes.draw do
  resources :homes, only: [:show]
  root to: "homes#show"
end
end
