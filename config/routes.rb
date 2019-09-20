Rails.application.routes.draw do
  root "web/base#index"
  devise_for :admins, :skip => [:registrations]
  as :admin do
    get "admins/edit" => "devise/registrations#edit", :as => "edit_admin_registration"
    put "admins" => "devise/registrations#update", :as => "admin_registration"
  end
  namespace :web, path: "/", as: "" do
    resources :photos, only: [:new, :create]
  end
end
