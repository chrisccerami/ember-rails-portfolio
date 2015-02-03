Rails.application.routes.draw do
  namespace :api do
    resources :projects
    resources :posts
  end
end
