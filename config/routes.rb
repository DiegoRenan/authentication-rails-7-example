Rails.application.routes.draw do
  root 'main#index'
  resource :session
  resource :registration
  resource :password_reset
  resource :password
end
