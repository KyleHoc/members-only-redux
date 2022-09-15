Rails.application.routes.draw do
  devise_for :users
  resources :posts, only:[:new, :create, :index, :show]
  root "posts#index"
  get '*path' => redirect('/')
end
