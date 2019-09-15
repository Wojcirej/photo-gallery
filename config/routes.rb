Rails.application.routes.draw do
  root "web/base#index"
  devise_for :admins
end
