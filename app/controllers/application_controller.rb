class ApplicationController < ActionController::Base

  private

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def login(user)
    Current.user = user
    reset_session
    session[:user_id] = user.id
  end

  def user_signed_in?
    current_user.present?
  end
  helper_method :user_signed_in?

  def logout(user)
    Current.user = nil
    reset_session
  end
end
