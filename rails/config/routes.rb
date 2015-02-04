Rails.application.routes.draw do
  namespace :api do
    resources :projects
    resources :posts
    resources :comments
  end
end
