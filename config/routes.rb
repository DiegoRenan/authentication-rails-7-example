Rails.application.routes.draw do
  resource :session
  resource :registration
  resource :password_reset
  resource :password
end
