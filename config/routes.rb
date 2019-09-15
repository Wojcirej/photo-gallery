Rails.application.routes.draw do
  root "web/base#index"
  devise_for :admins
  namespace :web, path: "/", as: "" do
    resources :photos, only: [:new, :create]
  end
end
